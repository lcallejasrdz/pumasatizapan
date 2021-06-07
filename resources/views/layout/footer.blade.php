<div class="row footer">
	<div class="col-sm-3 text-center">
		<img src="{{ URL::to('/assets/images/logo_white.svg') }}" alt="{{ env('APP_NAME') }}">
	</div>
	{{-- <div class="col-sm-6">
		<p class="text-center">
			<a href="{{ URL::route('notice_of_privacy') }}">Aviso de Privacidad</a>
			<br><a href="{{ URL::to('/assets/files/carta-de-autorizacion-de-imagen.pdf') }}" target="_blank">Autorización de Imagen</a>
			<br><a href="{{ URL::to('/assets/files/carta-relevo-de-responsabilidades.pdf') }}" target="_blank">Relevo de Responsabilidades</a>
			<br><a href="{{ URL::to('/assets/files/reglamento-interno.pdf') }}" target="_blank">Reglamento Interno</a>
		</p>
	</div> --}}
	<div class="col-sm-9">
		<p class="text-center text-uppercase social-media">{{ env('APP_NAME') }}<br><a href="https://www.facebook.com/FilialPumasSanMateo/" target="_blank"><i class="fa fa-facebook-square fa-fw"></i></a><a href="https://www.instagram.com/pumassanmateo/" target="_blank"><i class="fa fa-instagram fa-fw"></i></a>{{-- <a href="#"><i class="fa fa-youtube-square fa-fw"></i></a> --}}</p>
	</div>
</div>