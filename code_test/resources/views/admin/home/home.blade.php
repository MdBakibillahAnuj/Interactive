@extends('admin.master')

@section('title')
    Admin | Dashboard
@endsection

@section('body')


    @php
        $user=DB::table('users')->get();
        $products=DB::table('products')->get();
    @endphp
    <div class="container-fluid">
        <div class="row ">
            <div class="col-xl-3 col-md-6">
                <a href="{{ route('products.view') }}" style="text-decoration: none; color: white;">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body">
                            Total Products
                        </div>
                        <div class="card-footer d-flex align-items-center justify-content-between bg-dark">
                            <h2 class=" text-white stretched-link" > {{ $products->count() }}</h2>
                            <div class="small text-white">Go</div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xl-3 col-md-6">
                <a href="#" style="text-decoration: none; color: white;">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body">
                            Total Users
                        </div>
                        <div class="card-footer d-flex align-items-center justify-content-between bg-dark">
                            <h2 class=" text-white stretched-link" > {{ $user->count() }}</h2>
                            <div class="small text-white"></div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

@endsection
