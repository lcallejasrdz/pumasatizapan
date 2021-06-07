<div class="row bg-gold">
    <div class="col-xs-4 col-sm-2 col-md-1"></div>
    <div class="col-xs-8 col-sm-10 col-md-11">
        <p class="text-center title-head text-uppercase">{{ env('APP_NAME') }}<br class="hidden-md hidden-lg"><a href="https://www.facebook.com/FilialPumasSanMateo/" target="_blank"><i class="fa fa-facebook-square fa-fw"></i></a><a href="https://www.instagram.com/pumassanmateo/" target="_blank"><i class="fa fa-instagram fa-fw"></i></a>{{-- <a href="#"><i class="fa fa-youtube-square fa-fw"></i></a> --}}</p>
    </div>
</div>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ URL::route('home') }}">
                {{-- <img src="{{ URL::to('assets/images/logo.svg') }}" alt="{{ env('APP_NAME') }}" class="navbar-logo"> --}}
                <img src="{{ URL::to('/assets/images/logo.svg') }}" alt="{{ env('APP_NAME') }}" class="navbar-logo">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="{{ URL::route('home') }}" class="text-blue">
                        INICIO
                    </a>
                </li>
                <li>
                    <a href="{{ URL::route('objectives') }}" class="text-blue">
                        OBJETIVOS
                    </a>
                </li>
                <li>
                    <a href="{{ URL::route('installations') }}" class="text-blue">
                        INSTALACIONES
                    </a>
                </li>
                {{-- <li>
                    <a href="{{ url('lang', [\App::getLocale() == 'es' ? 'en' : 'es']) }}" class="text-blue">
                        PROGRAMAS
                    </a>
                </li> --}}
                <li>
                    <a href="{{ URL::route('workplan') }}" class="text-blue">
                        PLAN DE TRABAJO
                    </a>
                </li>
                <li>
                    <a href="{{ URL::route('downloads') }}" class="text-blue">
                        DESCARGAS
                    </a>
                </li>
                <li>
                    <a href="{{ URL::route('contact') }}" class="text-blue">
                        CONTACTO
                    </a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>