@extends('admin.master')

@section('title')
    Admin | Manage Products
@endsection

@section('body')
    <div class="container">
        <h1 class="text-center text-success">All Products</h1>
        <hr>

        <table class="table table-hover table-primary table-warning table-bordered">
            <thead>
            <tr>
                <th scope="col">#S/ON</th>
                <th scope="col">Product Name</th>
                <th scope="col">Product Quantity</th>
                <th scope="col">Product Price</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $product)
                <tr>

                    <td>{{ $loop->index+1 }}</td>
                    <td>{{ $product->name }}</td>

                    <td>{{ $product->quantity }}</td>
                    <td>{{ $product->price.'.'.'Tk'}} </td>
                    <td>
                        <a href="{{ route('products.edit', ['id'=>$product->id]) }}" class="btn btn-sm btn-primary">Edit</a>
                        <a href="{{ route('products.del', ['id'=>$product->id]) }}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete this?')">Delt</a>
                        <a href="{{ route('products.create') }}" class="btn btn-sm btn-secondary">Add More</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
        <div class="row end">
            {{ $products->links()  }}
        </div>
    </div>

@endsection
