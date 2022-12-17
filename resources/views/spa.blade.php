<!DOCTYPE html>
<html class="has-aside-left has-aside-expanded">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Vue SPA Demo</title>

    <!-- App favicon -->
    <link rel="shortcut icon" href="ubold/assets/images/favicon.ico">

    <link href="{{ mix('/css/app.css') }}" rel="stylesheet" />

    <!-- App css -->
    <link href={{ asset("ubold/assets/css/config/material/app.min.css") }} rel="stylesheet" type="text/css" id="app-style"/>
    <!-- icons -->
    <link href={{ asset("ubold/assets/css/icons.min.css") }} rel="stylesheet" type="text/css" />


</head>

<body>

    <div id="app">
        <app></app>
        {{-- <notes></notes>  --}}
    </div>

    <script src="{{ mix('js/app.js') }}"></script>

    <!-- Vendor js -->
    <script src={{ asset("ubold/assets/js/vendor.min.js") }}></script>

    <!-- App js -->
    <script src={{ asset("ubold/assets/js/app.min.js") }}></script>


</body>

</html>
