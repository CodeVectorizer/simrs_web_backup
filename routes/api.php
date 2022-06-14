<?php

use App\Http\Controllers\UserController;
use App\Models\User;
use App\Models\Category;
use App\Models\Doctor;
use App\Models\Facility;
use App\Models\Faq;
use App\Models\Gallery;
use App\Models\Information;
use App\Models\Mitra;
use App\Models\PatientDuty;
use App\Models\PatientRight;
use App\Models\Post;
use App\Models\Service;
use App\Models\Speciality;
use App\Models\Testimonial;
use App\Models\Video;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::prefix('v1')->group(function () {

    Route::get('category/', function () {
        $category = Category::with('posts')->get();
        // $category = Category::all();
        return $category;
    });
    Route::get('faq/', function () {
        $faq = Faq::all();
        return $faq;
    });

    Route::get('doctor/', function () {
        $doctor = Doctor::all();
        $doctor->map(function ($item, $key) {
            $item->avatar = asset($item->avatar);
            $item->speciality;
        });
        // $doctor[0]->avatar = asset($doctor[0]->avatar);
        // return ($doctor[0]->avatar);
        return $doctor;
    });


    Route::get('/doctor/{id}', function ($id) {

        $doctor = Doctor::find($id);
        $doctor->speciality;
        $doctor->avatar = asset($doctor->avatar);
        return $doctor;
    });

    Route::get('facility/', function () {
        $facility = Facility::all();
        $facility->map(function ($item, $key) {
            $item->image = asset($item->image);
        });
        return $facility;
    });

    Route::get('service/', function () {
        $service = Service::all();
        $service->map(function ($item, $key) {
            $item->image = asset($item->image);
        });
        return $service;
    });

    Route::get('information/', function () {
        $information = Information::all();
        $information->map(function ($item, $key) {
            $item->bg_image = asset($item->bg_image);
        });
        return $information;
    });

    Route::get('testimonial/', function () {
        $testimonial = Testimonial::all();
        $testimonial->map(function ($item, $key) {
            $item->photo = asset($item->pohto);
        });
        return $testimonial;
    });

    Route::get('mitra/', function () {
        $mitra = Mitra::all();
        $mitra->map(function ($item, $key) {
            $item->image = asset($item->image);
        });
        return $mitra;
    });

    Route::get('gallery/', function () {
        $gallery = Gallery::all();
        $gallery->map(function ($item, $key) {
            $item->image = asset($item->image);
        });
        return $gallery;
    });

    Route::get('patienduty/', function () {
        $patiendDuty = PatientDuty::all();
        return $patiendDuty;
    });

    Route::get('patienRight/', function () {
        $patienRight = PatientRight::all();
        return $patienRight;
    });

    Route::get('post/', function () {
        $post = Post::latest()->get();
        $post->map(function ($item, $key) {
            $item->image = asset($item->image);
            $item->category;
        });
        return $post;
    });
    Route::get('/post/{id}', function ($id) {

        $post = Post::find($id);
        $post->category;
        $post->image = asset($post->image);
        return $post;
    });

    Route::get('speciality/', function () {
        $speciality = Speciality::all();
        return $speciality;
    });

    Route::get('video/', function () {
        $video = Video::all();
        return $video;
    });
});
Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);
Route::post('/update', [UserController::class, 'updateUser']);
Route::get('/logout', [UserController::class, 'logout']);
Route::get('/user', [UserController::class, 'getCurrentUser']);
//
