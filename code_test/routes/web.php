<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PageController;

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
//
//Route::get('/', function () {
//    return view('front_pages.home.front_index');
//});

Route::get('/', [PageController::class, 'indexPage'])->name('home.front');


Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');
Route::post('/products/store', [ProductController::class, 'store'])->name('products.store');
Route::get('/product/view', [ProductController::class, 'viewProduct'])->name('products.view');
Route::get('/products/{id}', [ProductController::class, 'edit'])->name('products.edit');
Route::post('/products-update/{id}', [ProductController::class, 'update'])->name('products.update');
Route::get('/products-del/{id}', [ProductController::class, 'deleteProduct'])->name('products.del');


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('admin.home.home');
    })->name('dashboard');
});
