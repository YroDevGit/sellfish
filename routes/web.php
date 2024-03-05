<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\fishcontroll;
use App\Http\Controllers\cartcontroll;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//Basic url
Route::get('/', function () {
    return view('index');
});

Route::get('/test', function(){
return view('admin/fish');
});



//Form submit
Route::post("/addfishnow", [fishcontroll::class,"addFish"])->name("addFish");


//direct link post
Route::get("/api/addToCart", [cartcontroll::class,"addToCart"]);





// React api
Route::get("/api/showFish", [fishcontroll::class,"showFish"]);

Route::get("/api/getUser", function(){
    $userid = 5;
    return response()->json($userid);
});