@extends('layout.principal')

@section('title')

@section('styles')
    {{-- WowSlider --}}
	{{ Html::style('assets/plugins/wowslider/engine1/style.css') }}
@endsection

@section('content')
	{{-- SlideShow --}}
	<div class="row">
		<div class="col-xs-12 padding-0">
		    <div id="carousel-principal" class="carousel slide" data-ride="carousel">
		  		<!-- Indicators -->
		  		<ol class="carousel-indicators">
		    		{{-- <li data-target="#carousel-principal" data-slide-to="0" class="active"></li>
		    		<li data-target="#carousel-principal" data-slide-to="1"></li>
		    		<li data-target="#carousel-principal" data-slide-to="2"></li> --}}
		  		</ol>

		  		<!-- Wrapper for slides -->
		  		<div class="carousel-inner" role="listbox">
		    		<div class="item active">
		      			<img src="{{ URL::to('/assets/images/index/slide1a.png') }}" alt="...">
		      			<div class="carousel-caption">
		      			</div>
		    		</div>
		    		{{-- <div class="item">
		      			<img src="{{ URL::to('/assets/images/index/slide1a.png') }}" alt="...">
		      			<div class="carousel-caption">
		      			</div>
		    		</div> --}}
		  		</div>

		  		<!-- Controls -->
				{{-- <a class="left carousel-control" href="#carousel-principal" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-principal" role="button" data-slide="next">
		    		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		    		<span class="sr-only">Next</span>
		  		</a> --}}
			</div>
		</div>
	</div>

	{{-- Bases --}}
	@include('website.modules.workplan')

	{{-- Programas --}}
	@include('website.modules.benefits')

	{{-- Instalaciones --}}
	@include('website.modules.installations')

	{{-- Contacto --}}
	@include('website.modules.contact')
@endsection

@section('scripts')
    {{-- WowSlider --}}
	{{ Html::script("assets/plugins/wowslider/engine1/wowslider.js") }}
	{{ Html::script("assets/plugins/wowslider/engine1/script.js") }}

	@include('website.formvalidation.contact')
@endsection