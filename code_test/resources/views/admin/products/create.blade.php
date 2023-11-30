@extends('admin.master')

@section('title')
    Admin | Product create
@endsection

@section('body')
    <div class="card">
        <h1 class="text-center text-success card-header">Add New Product</h1>
        <div class="card-body">
            <div class="row justify-content-center">
                <div class="col-md-6 border border-dark border bg-warning">

                    <form  method="POST" action="{{ route('products.store') }}" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <lavel>Product Name</lavel>
                            <input class="form-control" type="text" name="name">
                            <span class="text-danger">
                                @error('name')
                                    {{ $message }}
                                @enderror
                            </span>
                        </div>


                        <div class="form-group">
                            <lavel>Product Quantity</lavel>
                            <input class="form-control" type="number" name="quantity" >
                            <span class="text-danger">
                                @error('quantity')
                                    {{ $message }}
                                @enderror
                            </span>
                        </div>

                        <div class="form-group">
                            <lavel>Product Price</lavel>
                            <input class="form-control" type="number" name="price" >
                            <span class="text-danger">
                                @error('price')
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

@endsection

