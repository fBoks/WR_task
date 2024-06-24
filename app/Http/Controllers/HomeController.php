<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    public function index ()
    {
        $messages = Message::query()
            ->join('users', 'users.id', '=', 'messages.user_id')
            ->orderBy('messages.id', 'desc')
            ->paginate(5, [
                'messages.id as id',
                'messages.text as text',
                'messages.created_at as created_at',
                'messages.user_id as user_id',
                'users.username as username',
                'users.email as email',
            ]);

        return view('home', compact(['messages']));
    }
}
