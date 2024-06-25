@extends('layouts.main')

@section('page.title', 'Главная страница')

@section('main.content')
    <div class="text-center mb-4">
        <div class="h2">
            {{ __('Гостевая книга') }}
        </div>
    </div>

    @auth
        <div class="mb-4">
            <div class="h3">
                {{ __('Написать сообщение') }}
            </div>

            <form action="{{ route('message.create') }}" method="POST">
                @csrf
                <x-form-item>
                    <x-trix name="text" value="{{ $message->text ?? '' }}"/>

                    <x-error name='text'/>
                </x-form-item>

                <div class="d-flex flex-column mb-3 w-25">
                    <x-form-item>
                        <div class="captcha">
                            <span>{!! captcha_img() !!}</span>
                            <button type="button" class="btn btn-danger" class="reload" id="reload">
                                &#x21bb;
                            </button>
                        </div>
                    </x-form-item>

                    <input id="captcha" type="text" class="form-control" placeholder="Введите капчу" name="captcha">

                    <x-error class="m-0" name="captcha" />
                </div>

                <x-button type="submit">
                    {{ __('Сохранить') }}
                </x-button>
            </form>
        </div>
    @endauth

    <div class="d-flex flex-column gap-3 gap-md-5">
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between">
                    <div class="h3">
                        {{ __('Сообщения') }}
                    </div>

                    @if( !empty($messages->total()) )
                        <a href="{{ route('home') }}" class="align-content-center text-decoration-none">{{ __('Сбросить фильтр')  }}</a>
                    @endif
                </div>
                @if( empty($messages->total()) )
                    <p>{{ __('Сообщений пока нет :(') }}</p>
                @else
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col" class="th-hover-overlay">
                                <span id="userSortButton" data-sort="{{ $sortOrder }}">
                                    {{ __('Пользователь') }}
                                    @if($sortBy === 'userSort')
                                        {{ $sortOrder === 'asc' ? '↓' : '↑' }}
                                    @endif
                                </span>
                            </th>
                            <th scope="col" class="th-hover-overlay">
                                <span id="emailSortButton" data-sort="{{ $sortOrder }}">
                                    {{ __('Email') }}
                                    @if($sortBy === 'emailSort')
                                        {{ $sortOrder === 'asc' ? '↓' : '↑' }}
                                    @endif
                                </span>
                            </th>
                            <th scope="col">{{  __('Сообщение')}}</th>
                            <th scope="col" class="th-hover-overlay">
                                <span id="dateSortButton" data-sort="{{ $sortOrder }}">
                                    {{ __('Дата') }}
                                    @if($sortBy === 'dateSort')
                                        {{ $sortOrder === 'asc' ? '↓' : '↑' }}
                                    @endif
                                </span>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($messages as $message)
                            <tr>
                                <th scope="row">{{ ($messages->currentPage() - 1) * $messages->perPage() + $loop->iteration }}</th>
                                <td>{{ $message->username }}</td>
                                <td>{{ $message->email }}</td>
                                <td>{{ $message->text }}</td>
                                <td><span data-bs-toggle="tooltip"
                                          title="{{ $message->created_at }}">{{ $message->created_at->diffForHumans() }}
                                    </span>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>



                    <div class="d-block justify-content-between">
                        <div class="d-flex">
                            {{ $messages->links('vendor.pagination.custom') }}
                        </div>
                        <div class="d-flex flex-column">
                            <p class="m-0">{{ __('Всего страниц:')  }} {{ $messages->lastPage() }}</p>
                            <p class="m-0">{{ __('Всего сообщений:')  }} {{ $messages->total() }}</p>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script>
        document.addEventListener('click', function (event) {
            if (event.target.id === 'dateSortButton' || event.target.id === 'emailSortButton' || event.target.id === 'userSortButton') {
                const currentSort = event.target.getAttribute('data-sort');
                const newSort = currentSort === 'asc' ? 'desc' : 'asc';

                const url = new URL(window.location.origin + window.location.pathname);

                url.searchParams.set((event.target.id).replace('Button', ''), newSort);

                const params = new URLSearchParams(window.location.search);
                const currentPage = params.get('page');

                if (currentPage) {
                    url.searchParams.set('page', currentPage);
                }

                window.location.href = url.href;
            }
        });
    </script>

@endpush
