<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        if (Auth::check()) {
            alert(__('Вы уже авторизованы'), 'info');
            return redirect()->route('home');
        }

        return view('register');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'username' => ['required', 'string', 'regex:/^[a-zA-Z0-9_]+$/', 'min:5', 'max:50', 'unique:users,username'],
            'email' => ['required', 'string', 'max:50', 'email', 'unique:users,email'],
            'password' => ['required', 'string', 'min:7', 'max:50', 'confirmed'],
            'captcha' => 'required|captcha'
        ]);

        $user = User::query()->create([
            'username' => $validated['username'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
            'ip_address' => $request->ip(),
            'user_agent' => $request->userAgent(),
        ]);

        Auth::login($user);

        alert(__('Аккаунт успешно создан!'));
        return redirect()->route('home');
    }
}
