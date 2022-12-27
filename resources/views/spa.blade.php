<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Starter | UBold - Responsive Admin Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="ubold/assets/images/favicon.ico">

    <link href="{{ mix('/css/app.css') }}" rel="stylesheet" />

    <!-- App css -->
    <link href={{ asset("ubold/assets/css/config/material/app.min.css") }} rel="stylesheet" type="text/css" id="app-style"/>
    <!-- icons -->
    <link href={{ asset("ubold/assets/css/icons.min.css") }} rel="stylesheet" type="text/css" />


</head>

<body class="loading" data-layout-mode="default" data-layout-color="light" data-topbar-color="dark" data-menu-position="fixed" data-leftbar-color="light" data-leftbar-size='default' data-sidebar-user='false'>

    <div id="app">
        <app></app>
    </div>

    <script src="{{ mix('js/app.js') }}"></script>

    <!-- Vendor js -->
    <script src={{ asset("ubold/assets/js/vendor.min.js") }}></script>

    <!-- App js -->
    <script src={{ asset("ubold/assets/js/app.min.js") }}></script>


</body>

</html>
