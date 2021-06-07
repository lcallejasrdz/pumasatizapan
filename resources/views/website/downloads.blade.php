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
    @include('website.modules.downloads')
@endsection

@section('scripts')
@endsection