<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>{{ env('APP_NAME') }} @yield('title')</title>

        {{-- Custom --}}
        <style>
        	html {
        		width: 100vw;
        		height: 100vh;
        	}
        	body {
        		margin: 0px !important;
        		width: 100vw;
        		height: 100vh;
        	}
        	div {
        		width: 100vw;
        		height: 100vh;

        		background: url({{ URL::to('/assets/images/errors/503.jpg') }});
  				background-repeat: no-repeat;
  				background-size: contain;
  				background-position: center;
        	}
        </style>
    </head>

    <body>
    	<div></div>
    </body>
</html>