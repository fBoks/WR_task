<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{ env('APP_NAME')  }}</title>
</head>
<body class="antialiased">
<div class="sm:fixed sm:top-0 sm:right-0 p-6 text-right">
    @auth
        auth
    @else
        not auth
    @endauth
</div>
</body>
</html>
