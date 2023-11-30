<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{

    public function viewProduct(){
        $products = Product::paginate(5);
        return view('admin.products.manage', ['products'=>$products]);
    }
    public function create(){
        return view('admin.products.create');
    }

    public function store(Request $request){

        $validated = $request->validate([
            'name' => 'required|max:255',
            'quantity' => 'required',
            'price' => 'required',
        ]);

        $product = new Product();
        $product->name    = $request->name;
        $product->quantity = $request->quantity;
        $product->price   = $request->price;
        $product->save();
        return redirect()->to('product/view')->with('message', 'Product added successfully');

    }

    public function edit($id){
        $product = Product::where('id', $id)->first();
        return view('admin.products.edit', ['product' => $product]);
    }
    public function update(Request $request, $id){

        $validated = $request->validate([
            'name' => 'required|max:255',
            'quantity' => 'required',
            'price' => 'required',
        ]);

        $product = Product::where('id',$id)->first();

        //Data save
        $product->name    = $request->name;
        $product->quantity = $request->quantity;
        $product->price   = $request->price;


        $product->save();
        return redirect()->to('product/view')->with('message', 'Product update successfully');
    }

    public function deleteProduct($id){

        $product = Product::where('id',$id)->first();
        $product->delete();
        return back()->with('message', 'Product deleted successfully');
    }


}
