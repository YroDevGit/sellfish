<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\fishcontroll;
use App\Http\Controllers\cartcontroll;
use Illuminate\Contracts\Session\Session;
use App\Livewire\CartIcon;

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
    Session()->put("userID","5");
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
include "reactapi.php";