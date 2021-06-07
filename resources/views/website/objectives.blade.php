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
	<div class="row pumas-margin">
		<div class="col-xs-12">
		    <p class="text-justify">Fomentar la práctica del fútbol, la recreación y el aprovechamiento del tiempo libre en los niños y jóvenes, buscando la construcción de valores y principios de convivencia social:</p>
		    <ol type="A">
		    	<li>Utilizar adecuadamente las instalaciones aportadas por el club.</li>
		    	<li>Crear él hábito deportivo en niños y jóvenes participantes de este proyecto buscando el mantenimiento de su salud física y mental.</li>
		    	<li>Contribuir a fortalecer los programas preventivos en contra de los vicios y drogadicción.</li>
		    	<li>Ofrecer a los niños y jóvenes una formación deportiva utilizando un proceso estructurado de entrenamiento que asegure en forma permanente el progreso de los alumnos.</li>
		    	<li>Integrar a la familia.</li>
		    	<li>Promover los talentos que se detecten en el desarrollo del programa.</li>
		    	<li>Estructurar un equipo para representarnos en eventos deportivos.</li>
		    </ol>
		</div>
	</div>
@endsection

@section('scripts')
@endsection