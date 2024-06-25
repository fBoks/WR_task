<nav class="navbar navbar-expand-md navbar-light bg-light">
  <div class="container-sm container-md container-xl">
    <a href="{{ route('home') }}" class="navbar-brand">{{ config('app.name') }}</a>

      <ul class="navbar-nav ms-auto mb-2 mb-md-0 text-center">
          @auth
              <div class="d-flex gap-3 align-items-center">
                  <p class="m-0">{{ Auth::user()->username }}</p>
                  <a href="{{ route('logout') }}">Выйти</a>
              </div>
          @endauth

          @guest
              <li class="nav-item">
                  <a href="{{ route('login') }}" class="nav-link">
                      {{ __('Вход') }}
                  </a>
              </li>

              <li class="nav-item">
                  <a href="{{ route('register') }}" class="nav-link pe-0">
                      {{ __('Регистрация') }}
                  </a>
              </li>
          @endguest
      </ul>
  </div>
</nav>

@once
  @push('css')
    <link rel="stylesheet" type="text/css" href="{{ url('/css/style.css') }}">
  @endpush
@endonce
