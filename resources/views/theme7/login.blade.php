@extends('theme7.layouts.main')

@section('head')
    @include('theme7.layouts.head')

    <style>
        .input_field {
    /* width: calc((100% - 60px) / 3); */
    height: 50px;
    padding-left: 25px;
    border: solid 1px #e5e5e5;
    border-radius: 5px;
    outline: none;
    color: #0e8ce4;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
}
.terms{
    border: 1px solid lightgrey;
    height: 250px;
    overflow-y: scroll;
    padding: 30px;
    background-color: white;
    width: 68%;
    font-size: 13px;
}
    </style>
@endsection


@section('content')

<div class="shopping-cart section" style="border-top: 1px solid lightgrey">
   
    <div class="container">
     
        <div class="row">

        {{-- display errors --}}
        @if ($errors->has('email') || $errors->has('password'))
        <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('password') }}</strong>
        </span>
        @endif
        @if ($errors->has('name'))
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('name') }}</strong>
                </span>
        @endif
        @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('email') }}</strong>
                </span>
        @endif

            <div class="offset-3 col-md-6 col-sm-12 offset-3 " style="padding-top: 2rem;">
                
                
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li role="tab" class="nav-item"><a href="#login_tab" class="nav-link active" role="tab" data-toggle="tab">Login</a></li>
                    <li role="tab" class="nav-item"><a href="#signup_tab" class="nav-link" role="tab" data-toggle="tab">Signup</a></li>
                </ul>

                <div class="tab-content" id="myTabContent" style="padding-top: 2rem;">
                    <div class="tab-pane fade show active" role="tabpanel" id="login_tab">
                        <form method="POST" id="checkout-form" class="clearfix" action="{{ route('login') }}" aria-label="{{ __('Login') }}">
                            {{csrf_field()}}
                            <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="billing-details">
                                    {{-- <p>Create Account ? <a href="#">Signup</a></p> --}}
                                    <div class="section-title-main">
                                        <h3 class="title">Login</h3>
                                    </div>
            
                                    <div class="form-group">
                                        <input class="contact_form_name input_field form-control" type="email" class="{{ $errors->has('email') ? ' is-invalid' : '' }} form-control" name="email" value="{{ old('email') }}" placeholder="Email"><br>
                                    </div>
                                    <div class="form-group">
                                        <input class="contact_form_name input_field form-control" type="password" name="password" class="{{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="Password"><br>
                                    </div>
                                    <div class="form-group">
                                        <input class="btn btn-primary" type="submit" name="login" value="LOGIN">
                                    </div>
                                </div>
                            </div>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane fade show" role="tabpanel"  id="signup_tab">
                        <div class="tab-pane" id="signup_tab">
                            <form method="POST" id="signin-form" class="clearfix" action="{{ route('register') }}" aria-label="{{ __('Login') }}">
                                {{csrf_field()}}
                                <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="billing-details">
                                        {{-- <p>Create Account ? <a href="#">Signup</a></p> --}}
                                        <div class="section-title-main">
                                            <h3 class="title">Signup</h3>
                                        </div>
                
                                        <div class="form-group">
                                            <input type="text" class="{{ $errors->has('firstName') ? ' is-invalid' : '' }} input form-control" name="firstName" placeholder="First Name" value="{{ old('firstName') }}">

                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="middleName" class="input form-control" placeholder="Middle Name" value="{{ old('middleName') }}">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="{{ $errors->has('lastName') ? ' is-invalid' : '' }} input form-control" name="lastName" placeholder="Last Name" value="{{ old('lastName') }}">
                                        </div>

                                        <div class="form-group">
                                            <input type="text" class="{{ $errors->has('username') ? ' is-invalid' : '' }} input form-control" name="username" placeholder="Username" value="{{ old('username') }}">
									
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="{{ $errors->has('password') ? ' is-invalid' : '' }} input form-control" class="input" name="password" placeholder="Password"><br>
									
                                        </div>
                                        <div class="form-group">
                                            <input id="password-confirm" type="password" name="password_confirmation" class="input form-control" placeholder="Confirm Password"><br>

                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="{{ $errors->has('email') ? ' is-invalid' : '' }} input form-control" name="email" value="{{ old('email') }}" placeholder="Email Address" value="{{ old('email') }}"><br>
									
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="{{ $errors->has('streetAddress') ? ' is-invalid' : '' }} input form-control" name="streetAddress" placeholder="Street Address" value="{{ old('streetAddress') }}">

                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="{{ $errors->has('city') ? ' is-invalid' : '' }} input form-control" name="city" placeholder="City" value="{{ old('city') }}">

                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="{{ $errors->has('phoneNumber') ? ' is-invalid' : '' }} input form-control" name="phoneNumber" placeholder="Phone Number" value="{{ old('phoneNumber') }}">

                                        </div>
                                        <div class="form-group">
                                            <div class="row" style="padding: 20px;">
                                                <div class="col-md-8 col-sm-12 offset-md-2 terms">
                                                    @component('components.terms')
                                                    @endcomponent
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input type="checkbox" name="terms" required>&nbsp;&nbsp;I accept the above Terms and Conditions<br>
                                  
                                        </div>
                                        <div class="form-group">
                                            <input type="checkbox" name="supplier" value="1">&nbsp;I am a Whole Seller<br>
                                            <small>Check this only if you are the whole-seller personnel.</small>
                                        </div>

                                        <div class="form-group">
                                            <input type="submit" name="login" value="Register" class="btn btn-primary">
								
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </form>
                        </div>
                    </div>
                  </div>
            </div>
        </div>
        

    
    </div>
    <!-- /container -->
</div>
<!-- /section -->

@endsection

@section('footer')

<script src="{{ asset('themes/7/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('themes/7/styles/bootstrap4/popper.js') }}"></script>
<script src="{{ asset('themes/7/styles/bootstrap4/bootstrap.min.js') }}"></script>

@endsection