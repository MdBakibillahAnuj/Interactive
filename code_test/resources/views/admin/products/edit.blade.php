@extends('admin.master')

@section('title')
    Admin | Product edit
@endsection

@section('body')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1 class="text-center text-success">Edit Product</h1>
            </div>
            <div class="card-body">
                <div class="row justify-content-center">
                    <div class="col-md-6 border border-dark border bg-warning">

                        <form  method="POST" action="{{ route('products.update', ['id'=>$product->id]) }}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <lavel>Name</lavel>
                                <input class="form-control" type="text" name="name" value="{{ $product->name }}">
                                <span class="text-danger">
                                    @error('name')
                                        {{ $message }}
                                    @enderror
                                </span>
                            </div>

                            <div class="form-group">
                                <lavel>Product Quantity</lavel>
                                <input class="form-control" type="number" name="quantity" value="{{ $product->quantity }}">
                                <span class="text-danger">
                                    @error('quantity')
                                        {{ $message }}
                                    @enderror
                                </span>
                            </div>
                            <div class="form-group">
                                <lavel>Price</lavel>
                                <input class="form-control" type="number" name="price" value="{{ $product->price }}">
                                <span class="text-danger">
                                    @error('quantity')
                                        {{ $message }}
                                    @enderror
                                </span>
                            </div>
                            <div class="d-grid m-2">
                                <input type="submit" class="btn col-3 btn-success" value="Add Product" />
                            </div>
                        </form>

                    </div>
                </div>
            </div>


        </div>
    </div>

@endsection
