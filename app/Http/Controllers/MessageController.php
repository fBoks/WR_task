<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function create (Request $request)
    {
        $validated = $request->validate([
            'text' => ['required', 'string', 'max:255'],
            'captcha' => 'required|captcha'
        ]);

        Message::query()->create([
            'text' => strip_tags($validated['text']),
            'user_id' => Auth::id(),
        ]);

        alert(__('Сообщение сохранено'));
        return redirect()->route('home');
    }

    public function delete (Request $message)
    {
        Message::query()
            ->where('id', $message->id)
            ->delete();

        alert(__('Сообщение удалено'));
        return back();
    }
}
