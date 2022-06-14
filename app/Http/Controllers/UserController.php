<?php

namespace App\Http\Controllers;

use App\Models\User;
use Inertia\Inertia;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redis;
use Tymon\JWTAuth\Facades\JWTAuth as FacadesJWTAuth;
use Tymon\JWTAuth\JWTAuth;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Default
        $query = User::query();

        if (request('search')) {
            $query->where(
                function ($query) {
                    return $query
                        ->where('name', 'LIKE', '%' . request('search') . '%')
                        ->orWhere('email', 'LIKE', '%' . request('search') . '%');
                }
            );
        }

        return Inertia::render('User/Index', [
            "users" => $query->paginate(5),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return Inertia::render('User/Create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|min:6',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);
        $avatar = null;

        // Upload
        if ($request->file('avatar')) {
            $avatarName = time() . $request->name . '.' . $request->avatar->getClientOriginalExtension();
            $folderDir = 'img/user/avatar';
            if (!File::isDirectory($folderDir)) {
                File::makeDirectory($folderDir, 0777, true);
            }

            $request->avatar->move(public_path($folderDir), $avatarName);
            $avatar = '/img/user/avatar/' . $avatarName;
        }
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'avatar' => $avatar,
        ]);

        return redirect()->route('user.index')->with('message', 'Data User Berhasil Ditambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return Inertia::render('User/Update', [
            'user' => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $request->validate([
            'name' => 'required|min:6',
            'email' => 'required|email',
        ]);
        $avatar = $request->avatar;

        if ($request->file('avatar')) {
            $folderDir = 'img/user/avatar';
            if (File::exists(public_path($user->avatar)) && $user->avatar != null) {
                unlink(public_path($user->avatar));
            }

            $avatarName = time() . $request->name . '.' . $request->avatar->getClientOriginalExtension();
            if (!File::isDirectory($folderDir)) {
                File::makeDirectory($folderDir, 0777, true);
            }
            $request->avatar->move(public_path($folderDir), $avatarName);
            $avatar = '/img/user/avatar/' . $avatarName;
        }
        // dd($user, $id);
        // dd($avatar);
        $user->update([
            'name' => $request->name,
            'email' => $request->email,
            'avatar' => $avatar,
        ]);
        return redirect()->route('user.index')->with('message', 'Data User Berhasil Diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function test(Request $request)
    {
        dd($request);
    }
    public function destroy(User $user)
    {
        if (File::exists(public_path($user->avatar))) {
            unlink(public_path($user->avatar));
        }
        $user->delete();
        return \back();
    }


    public function updateAvatar(Request $request)
    {
        // For single file validation
        Filepond::field($request->avatar)->validate(['avatar' => 'required|image|max:2000']);

        // For multiple file validation        

        $avatarName = 'avatar-' . auth()->id();
        $folderDir = 'img/usersAvatar';
        if (!File::isDirectory($folderDir)) {
            File::makeDirectory($folderDir, 0777, true);
        }
        $fileInfo = Filepond::field($request->avatar)
            ->moveTo($folderDir . '/' . $avatarName);

        User::where('id', Auth::user()->id)->update([
            'avatar' => $fileInfo['dirname'] . "/" . $fileInfo['basename']
        ]);
    }

    public function upload(Request $request)
    {
        $imageName = time() . '.' . $request->file->getClientOriginalExtension();


        return response()->json(['success' => 'You have successfully upload file.']);
    }

    public function register(Request $request)
    {
        $plainPassword = $request->password;
        $password = bcrypt($request->password);
        $request->request->add(['password' => $password]);

        // create the user account 
        $created = User::create($request->all());
        $request->request->add(['password' => $plainPassword]);
        // login now..
        return $this->login($request);
    }
    public function login(Request $request)
    {

        $input = $request->only('email', 'password');
        $jwt_token = null;
        if (!$jwt_token = FacadesJWTAuth::attempt($input)) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid Email or Password',
            ], 401);
        }
        // get the user 
        $user = Auth::user();

        return response()->json([
            'success' => true,
            'token' => $jwt_token,
            'user' => $user
        ]);
    }
    public function logout(Request $request)
    {
        if (!User::checkToken($request)) {
            return response()->json([
                'message' => 'Token is required',
                'success' => false,
            ], 422);
        }

        try {
            JWTAuth::invalidate(JWTAuth::parseToken($request->token));
            return response()->json([
                'success' => true,
                'message' => 'User logged out successfully'
            ]);
        } catch (JWTException $exception) {
            return response()->json([
                'success' => false,
                'message' => 'Sorry, the user cannot be logged out'
            ], 500);
        }
    }

    public function getCurrentUser(Request $request)
    {
        if (!User::checkToken($request)) {
            return response()->json([
                'message' => 'Token is required'
            ], 422);
        }

        $user = FacadesJWTAuth::parseToken()->authenticate();
        // add isProfileUpdated....
        $isProfileUpdated = false;
        if ($user->isPicUpdated == 1 && $user->isEmailUpdated) {
            $isProfileUpdated = true;
        }
        $user->isProfileUpdated = $isProfileUpdated;

        return $user;
    }


    public function updateUser(Request $request)
    {
        $user = $this->getCurrentUser($request);
        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'User is not found'
            ]);
        }

        unset($data['token']);

        $updatedUser = User::where('id', $user->id)->update($data);
        $user =  User::find($user->id);

        return response()->json([
            'success' => true,
            'message' => 'Information has been updated successfully!',
            'user' => $user
        ]);
    }
}
