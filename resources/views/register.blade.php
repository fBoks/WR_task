@extends('layouts.auth')

@section('page.title', 'Регистрация')

@section('auth.content')
    <x-card>
        <x-card-header>
            <x-card-title>
                {{ __('Регистрация') }}
            </x-card-title>

            <x-slot name="right">
                <a href="{{ route('login') }}" class="text-secondary">
                    {{ __('Вход') }}
                </a>
            </x-slot>
        </x-card-header>

        <x-card-body>
            <x-form action="{{ route('register.store') }}" method="POST">
                <x-form-item>
                    <x-label required>{{ __('Имя пользователя    ') }}</x-label>
                    <x-input type="text" name="username" value="{{ old('username') }}" autofocus data-bs-toggle="tooltip" title="Только латиница, цифры и символ нижнего подчеркивания '_'" />

                    <x-error name='username' />
                </x-form-item>

                <x-form-item>
                    <x-label required>{{ __('Email') }}</x-label>
                    <x-input type="email" name="email" value="{{ old('email') }}" autofocus data-bs-toggle="tooltip" title="Пример: ivanov@example.com"/>

                    <x-error name='email' />
                </x-form-item>

                <x-form-item>
                    <x-label required>{{ __('Пароль') }}</x-label>
                    <x-input type="password" name="password" data-bs-toggle="tooltip" title="От 7 до 50 символов" />

                    <x-error name='password' />
                </x-form-item>

                <x-form-item>
                    <x-label required>{{ __('Подтверждение пароля') }}</x-label>
                    <x-input type="password" name="password_confirmation" />

                    <x-error name='password_confirmation' />
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
                    {{ __('Создать аккаунт') }}
                </x-button>
            </x-form>
        </x-card-body>
    </x-card>
@endsection
