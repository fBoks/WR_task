<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function index (Request $request)
    {
        $sortBy = '';
        $orderByColumn = 'messages.id';
        $sortOrder = 'desc';

        if ($request->input('dateSort')){
            $sortBy = 'dateSort';
            $orderByColumn = 'messages.created_at';
            $sortOrder = $request->input('dateSort');
        }

        if ($request->input('emailSort')){
            $sortBy = 'emailSort';
            $orderByColumn = 'users.email';
            $sortOrder = $request->input('emailSort');
        }

        if ($request->input('userSort')){
            $sortBy = 'userSort';
            $orderByColumn = 'users.username';
            $sortOrder = $request->input('userSort');
        }

        $messages = Message::query()
            ->join('users', 'users.id', '=', 'messages.user_id')
            ->orderBy($orderByColumn, $sortOrder)
            ->paginate(5, [
                'messages.id as id',
                'messages.text as text',
                'messages.created_at as created_at',
                'messages.user_id as user_id',
                'users.username as username',
                'users.email as email',
            ]);

        return view('home', compact(['messages', 'sortBy', 'sortOrder']));
    }
}
