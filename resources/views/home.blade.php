{{-- @extends('layouts.app')
@section('content')
<div class="container">
    <h1>Hola tambien llama al home</h1>
</div>
@endsection
 --}}

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ mix('css/app.css') }}" type="text/css">

    <title>{{ config('app.name') }}</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
</head>

<body>
    <div class="pull-right">
        <a href="{{ route('logout') }} " 
          class="btn btn-default btn-flat"
          onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
            Sign out
        </a>
        
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            {{ csrf_field() }}
        </form>

    </div>

    <div id="app">

        <div id="nav">
            <router-link to="/">Home</router-link> |
            <router-link to="/about">About</router-link>
        </div>

        <router-view/>

    </div>

</body>

<script src="{{ mix('/js/app.js') }}"></script>

</html>