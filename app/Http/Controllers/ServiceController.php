<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Default
        $query = Service::query();

        if (request('search')) {
            $query->where(
                function ($query) {
                    return $query
                        ->where('title', 'LIKE', '%' . request('search') . '%')
                        ->orWhere('image', 'LIKE', '%' . request('search') . '%');
                }
            );
        }

        return Inertia::render('Service/Index', [
            "services" => $query->paginate(10),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return Inertia::render('Service/Create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // sdafasdf
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',

            'open' => 'required',
            'time' => 'required',
        ]);
        $image = null;

        // Upload
        if ($request->file('image')) {
            $avatarName = time() . $request->title . '.' . $request->image->getClientOriginalExtension();
            $folderDir = 'img/service/image';
            if (!File::isDirectory($folderDir)) {
                File::makeDirectory($folderDir, 0777, true);
            }

            $request->image->move(public_path($folderDir), $avatarName);
            $image = '/img/service/image/' . $avatarName;
        }
        Service::create([
            'title' => $request->title,
            'open' => $request->open,
            'time' => $request->time,
            'image' => $image,
        ]);

        return redirect()->route('service.index')->with('message', 'Data Service Berhasil Ditambah');
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
    public function edit(Service $service)
    {
        return Inertia::render('Service/Update', [
            'service' => $service
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
        $service = Service::find($id);
        $request->validate([
            'title' => 'required',
            'open' => 'required',
            'time' => 'required',
        ]);
        $image = $request->image;

        if ($request->file('image')) {
            $folderDir = 'img/service/image';
            if (File::exists(public_path($service->image))) {
                unlink(public_path($service->image));
            }

            $avatarName = time() . $request->title . '.' . $request->image->getClientOriginalExtension();
            if (!File::isDirectory($folderDir)) {
                File::makeDirectory($folderDir, 0777, true);
            }
            $request->image->move(public_path($folderDir), $avatarName);
            $image = '/img/service/image/' . $avatarName;
        }
        // dd($service, $id);
        // dd($image);
        $service->update([
            'title' => $request->title,
            'open' => $request->open,
            'time' => $request->time,
            'image' => $request->image,
            'image' => $image,
        ]);
        return redirect()->route('service.index')->with('message', 'Data Service Berhasil Diupdate');
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
    public function destroy(Service $service)
    {
        if (File::exists(public_path($service->image))) {
            unlink(public_path($service->image));
        }
        $service->delete();
        return \back();
    }


    public function updateAvatar(Request $request)
    {
        // For single file validation
        Filepond::field($request->image)->validate(['image' => 'required|image|max:2000']);

        // For multiple file validation

        $avatarName = 'image-' . auth()->id();
        $folderDir = 'img/usersAvatar';
        if (!File::isDirectory($folderDir)) {
            File::makeDirectory($folderDir, 0777, true);
        }
        $fileInfo = Filepond::field($request->image)
            ->moveTo($folderDir . '/' . $avatarName);

        Service::where('id', Auth::service()->id)->update([
            'image' => $fileInfo['dirname'] . "/" . $fileInfo['basename']
        ]);
    }

    public function upload(Request $request)
    {
        $imageName = time() . '.' . $request->file->getClientOriginalExtension();


        return response()->json(['success' => 'You have successfully upload file.']);
    }
}
