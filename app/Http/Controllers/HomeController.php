<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function index ()
    {
        return view('home');
    }
}
