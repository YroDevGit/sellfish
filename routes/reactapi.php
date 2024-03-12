<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\fishcontroll;
use App\Http\Controllers\cartcontroll;

Route::get("/api/showFish", [fishcontroll::class,"showFish"]);

Route::get("/api/getUser", function(){
    $userid = 5;
    return response()->json($userid);
});

Route::get("/api/getCartItems", [cartcontroll::class,"getCartItems"]);

Route::get("/api/getMaxQty",[cartcontroll::class,"getProductOnCart"]);