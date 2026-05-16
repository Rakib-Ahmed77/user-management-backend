<?php
use App\Models\Notification;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;

/*
|--------------------------------------------------------------------------
| Public Routes
|--------------------------------------------------------------------------
*/

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

/*
|--------------------------------------------------------------------------
| Protected Routes (Any Logged In User)
|--------------------------------------------------------------------------
*/

Route::middleware('auth:sanctum')->group(function () {
 Route::get('/check-user', function (\Illuminate\Http\Request $request) {
        return response()->json($request->user());
    });
    // auth
    Route::get('/profile', [AuthController::class, 'profile']);
    Route::post('/logout', [AuthController::class, 'logout']);

    // user own profile
    Route::get('/my-profile', [UserController::class, 'myProfile']);
    Route::post('/my-profile/update', [UserController::class, 'updateMyProfile']);

    /*
    |--------------------------------------------------------------------------
    | Admin Only Routes
    |--------------------------------------------------------------------------
    */

    Route::middleware('admin')->group(function () {

        Route::get('/users', [UserController::class, 'index']);
        Route::get('/users/{id}', [UserController::class, 'show']);
        Route::post('/users', [UserController::class, 'store']);
        Route::put('/users/{id}', [UserController::class, 'update']);
        Route::delete('/users/{id}', [UserController::class, 'destroy']);
        Route::get('/notifications', function () {
    return Notification::latest()->get();
});
    });

});