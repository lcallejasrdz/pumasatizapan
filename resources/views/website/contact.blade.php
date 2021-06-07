@extends('layout.principal')

@section('title', '| '.trans($active.'.title'))

@section('styles')
@endsection

@section('content')
    <div class="row">
        <div class="col-sm-12">
            <h1>{{ trans($active.'.title') }}</h1>
        </div>
    </div>
	<div class="row">
		<div class="col-xs-12 contact-card">
			<p class="text-center">Horarios de oficina</p>
			<p class="text-center">Lunes a sábado de 11:00 a.m. a 7:00 p.m.</p>
		</div>
		<div class="col-xs-12 contact-card">
			<p class="text-center">Teléfonos</p>
			<p class="text-center"><a href="tel:+525579785437">55-7978-5437</a> | <a href="tel:+525541350517">55-4135-0517</a></p>
		</div>
		<div class="col-xs-12 contact-card">
			<p class="text-center">Informes</p>
			<p class="text-center"><a href="mailto:info@pumassanmateo.com?Subject=Me%20interesa%20saber%20más%20de%20Pumas%20San%20Mateo">info@pumassanmateo.com</a></p>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12">
			<p class="text-center">También puedes encontrarnos en <a href="https://www.pumas.mx/directorio-filiales/" target="_blank">Escuelas oficiales de PUMAS</a></p>
		</div>
	</div>
    @include('website.modules.contact')
@endsection

@section('scripts')
    @include('website.formvalidation.contact')
@endsection