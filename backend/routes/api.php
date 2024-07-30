<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\RecordController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

Route::middleware(['auth:api'])->group(function () {
    Route::get('records', [RecordController::class, 'index']);
    Route::get('records/{id}', [RecordController::class, 'edit']);
    Route::put('records/{id}', [RecordController::class, 'update']);
    Route::delete('records/{id}', [RecordController::class, 'destroy']);
    Route::post('records', [RecordController::class, 'store']);
    Route::get('categories', [CategoryController::class, 'index']);
    Route::get('me', [AuthController::class, 'me']);
});
