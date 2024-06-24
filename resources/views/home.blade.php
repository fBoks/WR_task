@extends('layouts.main')

@section('page.title', 'Главная страница')

@section('main.content')
    <div class="text-center mb-4">
        <div class="h2">
            {{ __('Гостевая книга') }}
        </div>
    </div>

    @auth
        Форма с написанием сообщения
    @endauth

    <div class="d-flex flex-column gap-3 gap-md-5">
        <div class="row">
            <div class="col-12">
                <div class="h3">
                    {{ __('Сообщения') }}
                </div>
                @if( empty($messages->total()) )
                    <p>Сообщений пока нет :(</p>
                @else
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Пользователь</th>
                            <th scope="col">E-mail</th>
                            <th scope="col">Текст</th>
                            <th scope="col">Дата</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($messages as $message)
                            <tr>
                                <th scope="row">{{ ($messages->currentPage() - 1) * $messages->perPage() + $loop->iteration }}</th>
                                <td>{{ $message->username }}</td>
                                <td>{{ $message->email }}</td>
                                <td>{{ $message->text }}</td>
                                <td>{{ $message->created_at->diffForHumans() }}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>



                    <div class="d-flex flex-column flex-lg-row justify-content-between">
                        <div class="d-flex justify-content-center">
                            {{ $messages->links('vendor.pagination.custom') }}
                        </div>
                        <div class="d-flex flex-column">
                            <p>Всего страниц: {{ $messages->lastPage() }}</p>
                            <p>Всего сообщений: {{ $messages->total() }}</p>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
