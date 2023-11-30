<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Product;

class PageController extends Controller
{
    public function indexPage(){
        $products = Product::paginate(5);
        return view('front_pages.home.front_index', ['products'=>$products]);
    }

}
