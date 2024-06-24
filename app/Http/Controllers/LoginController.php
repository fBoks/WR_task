<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        if(Auth::check()) {
            alert(__('Вы уже авторизованы'), 'info');
            return redirect()->route('home');
        }

        return view('login');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'username' => ['required', 'string', 'max:50'],
            'password' => ['required', 'string', 'min:7', 'max:50'],
        ]);

        if (Auth::attempt($validated)) {
            $request->session()->regenerate();

            alert(__('Добро пожаловать!'));
            return redirect()->route('home');
        }

        return back()->withErrors([
            'login' => 'Неверный логин или пароль'
        ])->onlyInput('login');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('home');
    }
}
