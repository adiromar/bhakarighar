@extends('theme7.layouts.main')

@section('content')
<section class="breadcrumb-section set-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                @if (Session::has('success'))
                <div class="btn btn-primary alert alert-success alert-dismissible show" role="alert">
                    <strong>{{ Session::get("success") }}</strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  @endif

                  @if (Session::has('info'))
                <div class="btn btn-primary alert alert-primary alert-dismissible show" role="alert">
                    <strong>{{ Session::get("info") }}</strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  @endif

                <div class="col-md-12 col-sm-12 text-right text-white">
                    <button class="btn btn-primary text-white float-right"><a href="{{ url('/') }}">Continue Shopping</a></button>
                </div>
                  
            </div>
        </div>
    </div>
</section>
@endsection