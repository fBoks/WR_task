@extends('layouts.auth')

@section('page.title', 'Вход')

@section('auth.content')
    <x-card>
        <x-card-header>
            <x-card-title>
                {{ __('Вход') }}
            </x-card-title>

            <x-slot name="right">
                <a href="{{ route('register') }}" class="text-secondary">
                    {{ __('Регистрация') }}
                </a>
            </x-slot>
        </x-card-header>

        <x-card-body>
            <x-form action="{{ route('login.store') }}" method="POST">
                <x-form-item>
                    <x-label required>{{ __('Имя пользователя') }}</x-label>
                    <x-input type="text" name="username" value="{{ old('username') }}" autofocus />

                    <x-error name="username" />
                </x-form-item>

                <x-form-item>
                    <x-label required>{{ __('Пароль') }}</x-label>
                    <x-input type="password" name="password" />

                    <x-error name="password" />
                </x-form-item>

                <div class="d-flex flex-column mb-3">
                    <x-form-item class="w-auto">
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

                <x-button type="submit" >
                    {{ __('Войти') }}
                </x-button>
            </x-form>
        </x-card-body>
    </x-card>
@endsection
