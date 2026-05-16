<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Notification;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    // Admin: all users
    public function index()
    {
        return User::all();
    }

    // Admin: single user
    public function show($id)
    {
        return User::findOrFail($id);
    }

    // Admin: create user
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required',
            'address' => 'required',
            'password' => 'required|min:6',
            'role' => 'required|in:admin,user'
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'role' => $request->role,
            'password' => Hash::make($request->password),
        ]);

        return response()->json([
            'message' => 'User Created',
            'user' => $user
        ]);
    }

    // Admin: update user
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $id,
            'phone' => 'required',
            'address' => 'required',
            'role' => 'required|in:admin,user'
        ]);

        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->role = $request->role;

        if ($request->password) {
            $user->password = Hash::make($request->password);
        }

        $user->save();

        return response()->json([
            'message' => 'User Updated',
            'user' => $user
        ]);
    }

    // Admin: delete
    public function destroy($id)
    {
        User::findOrFail($id)->delete();

        return response()->json([
            'message' => 'User Deleted'
        ]);
    }

    // Logged user own profile
    public function myProfile(Request $request)
    {
        return $request->user();
    }

    // Logged user update own profile
    public function updateMyProfile(Request $request)
    {
        $user = $request->user();

        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $user->id,
            'phone' => 'required',
            'address' => 'required'
        ]);

        $user->update($request->only([
            'name',
            'email',
            'phone',
            'address'
        ]));

        Notification::create([
    'message' => 'User "' . $user->name . '" updated their profile information.'
]);

        return response()->json([
            'message' => 'Profile Updated',
            'user' => $user
        ]);
    }
}