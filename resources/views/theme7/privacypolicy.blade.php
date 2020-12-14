@extends('theme7.layouts.main')

@section('menu')

	@include('theme7.layouts.head')

	<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/contact_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/contact_responsive.css') }}">

@endsection

@section('content')


<!-- Start Contact -->

<div class="contact_info">
	<div class="container">
		<div class="row">
            <div class="col-12">
            {!! App\Setting::first() ? App\Setting::first()->privacyPolicy : '' !!}
            </div>
        </div>
    </div>
</div>

@endsection