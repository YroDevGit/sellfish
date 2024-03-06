<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\cart;

class cartcontroll extends Controller
{

    // add to cart
    public function addToCart(Request $req){
        $user = $req->input('id');
        $fish = $req->input('fish');
        $price = $req->input('price');

        $fr = new \DateTime();
        $code = array("1","2","3","4","5","6","7","8","9","0","T","Y","R","O","N", "E", "M","A","L","C","Z","P","H","U","I","G","F","K","D","S");
        shuffle($code);
        $newText = $code[0].$code[1].$code[2].$code[3].$code[4].$code[5].$fr->format("YMdHmi").$code[6].$code[7];
        

        cart::insert([
            "user_id" => $user,
            "fish_code" => $fish,
            "price" => $price,
            "quantity" => "1",
            "total" => $price,
            "purchase_code" => $newText,
            "stat" => "0",
            "purchase_date" => now()
        ]);
        $success = [
            [
                "fish_id" => 5,
                "fish_code" => "CD2024Mar05010334ANCRI7G48UL"
            ]
        ];
        return response()->json($success);
    }


    //get the cart items
    public function getCartNumberOfItems(){
        $user = session("userID");
        $data = cart::where("user_id",$user)->get();
        return $data;
    }


    //get the cart items count
    public function getCartNumber(){
        $user = session("userID");
        $data = cart::where("user_id",$user)->count();
        return $data;
    }

    // json data to front end
    public function getCartItems(Request $req){
        $data = $this->getCartNumberOfItems();
        return response()->json($data);
    }
}
