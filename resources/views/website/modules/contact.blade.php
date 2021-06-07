<div class="row color-blue">
	<div class="col-md-6 img-module-container">
		<img src="{{ URL::to('/assets/images/index/contact.jpg') }}" alt="...">
	</div>
	<div class="col-md-6 padding-25">
		<h2 class="color-blue">LLENA EL FORMULARIO Y EN BREVE NOS PONDREMOS EN CONTACTO CONTIGO</h2>
      {!! Form::open(['route' => 'contact', 'method' => 'post', 'id' => 'formValidation', 'class' => 'form-horizontal']) !!}
          <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
              <div class="col-sm-12">
                        {!! Form::text('name', old('name'), ['id' => 'name', 'class' => 'form-control', 'placeholder' => trans('validation.attributes.name')]) !!}
                  <span class="help-block">{{ $errors->first('name', ':message') }}</span>
              </div>
          </div>
          <div class="form-group {{ $errors->first('email') ? 'has-error' : '' }}">
              <div class="col-sm-12">
                  {!! Form::text('email', old('email'), ['id' => 'email', 'class' => 'form-control', 'placeholder' => trans('validation.attributes.email')]) !!}
                  <span class="help-block">{{ $errors->first('email', ':message') }}</span>
              </div>
          </div>
          <div class="form-group {{ $errors->first('phone') ? 'has-error' : '' }}">
              <div class="col-sm-12">
                  {!! Form::text('phone', old('phone'), ['id' => 'phone', 'class' => 'form-control', 'placeholder' => trans('validation.attributes.phone')]) !!}
                  <span class="help-block">{{ $errors->first('phone', ':message') }}</span>
              </div>
          </div>
          <div class="form-group {{ $errors->first('message') ? 'has-error' : '' }}">
              <div class="col-sm-12">
                  {!! Form::textarea('message', old('message'), ['id' => 'message', 'class' => 'form-control', 'placeholder' => trans('validation.attributes.message')]) !!}
                  <span class="help-block">{{ $errors->first('message', ':message') }}</span>
              </div>
          </div>
          <div class="form-group">
              <div class="col-sm-12 text-right">
                  {!! Form::submit(trans($active.'.send'), ['class' => 'btn btn-default']) !!}
              </div>
          </div>
      {!! Form::close() !!}
	</div>
</div>