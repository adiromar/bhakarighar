@extends('theme7.layouts.main')

@section('head')
    @include('theme7.layouts.head')

    <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/jquery-ui-1.12.1.custom/jquery-ui.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/shop_styles.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/shop_responsive.css') }}">
	
	<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/style.css') }}">


@endsection

<style>
    .checkout-form .form-group input {
    width: 100%;
    height: 45px;
    line-height: 50px;
    padding: 0 20px;
    border-radius: 3px;
    border-radius: 0px;
    color: #2b3894 !important;
    border: none;
    background: #F6F7FB;
}
.checkout-form .form-group label span {
    color: #ff2c18;
    display: inline-block;
    position: relative;
    right: -4px;
    top: 4px;
    font-size: 16px;
}
.checkout-form .create-account input {
    width: auto;
    display: inline-block;
    height: auto;
    border-radius: 100%;
    margin-right: 3px;
}
.order-details {
    margin-top: 30px;
    background: #fff;
    padding: 15px 0 30px 0;
    border: 1px solid #eee;
}
.single-widget {
    margin-bottom: 30px;
}
.single-widget h2 {
    position: relative;
    font-size: 15px;
    font-weight: 600;
    padding: 10px 30px;
    line-height: 24px;
    text-transform: uppercase;
    color: #333;
    padding-bottom: 5px;
}
.single-widget h2:before {
    position: absolute;
    content: "";
    left: 30px;
    bottom: 0;
    height: 2px;
    width: 50px;
    background: #6112c9;
}
.single-widget .content ul {
    margin-top: 30px;
}
.single-widget .content ul li {
    display: block;
    padding: 0px 30px;
    font-size: 15px;
    font-weight: 400;
    color: #333;
    margin-bottom: 12px;
}
.single-widget .content ul li.last {
    padding-top: 12px;
    border-top: 1px solid #ebebeb;
    display: block;
    font-size: 15px;
    font-weight: 400;
    color: #333;
}
.single-widget .checkbox {
    text-align: left;
    margin: 0;
    padding: 0px 30px;
    margin-top: 30px;
}

.single-widget.get-button .btn {
    height: 46px;
    width: 100%;
    line-height: 32px;
    text-align: center;
    border-radius: 0;
    text-transform: uppercase;
    color: #fff;
    background: rebeccapurple;
}
.btn:hover{
    background: black;
}
</style>
@section('content')

	

	<!-- Shop -->

	<div class="shop contact_info" style="min-height: 825px;">
		<div class="container">
            <form class="form" method="post" action="{{ route('checkout.newstore') }}">
                {{ csrf_field() }}
			<div class="row">
                
				<div class="col-lg-7 col-12">
					
					<!-- Shop Content -->

					<div class="shop_content">

						<div class="product_grid">
							<div class="product_grid_border"></div>
                            <div class="checkout-form">

                                <h2>Make Your Checkout Here</h2>
                                <p>Please register in order to checkout more quickly</p>
                                <!-- Form -->
                                
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                                <label>Full Name<span>*</span></label>
                                                <input type="text" name="full_name" placeholder="" class="form-control" required="required">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                                <label>Email Address<span>*</span></label>
                                                <input type="email" name="user_email" placeholder="" class="form-control" required="required">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                                <label>Phone Number<span>*</span></label>
                                                <input type="number" name="number" placeholder="" class="form-control" required="required">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                                <label>Address<span>*</span></label>
                                                <input type="text" name="shippingAddress" placeholder="" class="form-control" required="required">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                            <label>State/Province <span class="req">*</span></label>
                                            <select name="state" id="state" class="form-control" required>
                                                <option value="">Select Province</option>
                                                <option value="1">Province 1</option>
                                                <option value="2">Province 2</option>
                                                <option value="3">Bagmati Province</option>
                                                <option value="4">Gandaki</option>
                                                <option value="5">Province 5</option>
                                                <option value="6">Karnali</option>
                                                <option value="7">Sudurpaschim</option>
                                            </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                            <label>City <span class="req">*</span></label>
                                            <input type="text" name="city" value="{{ old('city') }}" class="form-control"  id="city" placeholder="City" required>
                                            </div>
                                        </div>
        
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="form-group">
                                            <label>Zipcode</label>
                                            <input type="number" name="zipcode"  class="form-control" value="{{ old('zipcode') }}" id="zipcode" placeholder="Zipcode">
                                            </div>
                                        </div>


                                        <div class="col-12">
                                            <div class="form-group create-account">
                                                <input id="cbox" type="checkbox">
                                                <label>Create an account?</label>
                                            </div>
                                        </div>
                                    </div>
                                
                                <!--/ End Form -->
                            </div>


						</div>


					</div>

                </div>
                
                <div class="col-lg-5">
                    <div class="order-details">
                        <!-- Order Widget -->
                        <table class="table" width="100%">
                            @if( count( Cart::content() ) )
                            @foreach( Cart::content() as $item )
                            <tr>
                                <td><img width="70" height="75" src="{{ asset('uploads/products/thumbnails/'.$item->model->featuredImage) }}" alt=""></td>
                                <td>
                                    {{ ucfirst($item->model->productName) }}
                                    <p>Qty: {{ $item->qty }}</p>
                                </td>
                                <td><p class="cart_total_price" style="color: #119532;">NRs. {{ $item->model->rate * $item->qty }}</p></td>
                            </tr>

                            <input type="hidden" name="product_id[]" value="{{ $item->model->id }}">
                            <input type="hidden" name="rate[]" value="{{ $item->model->rate }}">
                            <input type="hidden" name="supplier_id[]" value="{{ $item->model->user_id }}">
                            <input type="hidden" name="quantities[]" value="{{ $item->qty }}">
                            @endforeach
                            @endif
                        </table>

                        <div class="single-widget">
                            <h2>CART  TOTALS</h2>
                            <div class="content">
                                <ul>
                                    <li>Sub Total :<span> {{Cart::subtotal()}}/-</span></li>
                                    <li>(+) Shipping :<span> Free</span></li>
                                    <li class="last">Total<span> NRs. :{{Cart::subtotal()}}/-</span></li>
                                </ul>
                            </div>
                        </div>
                        {{-- @foreach (Cart::content() as $item)
                                <input type="hidden" name="product_id[]" value="{{ $item->model->id }}">
                                <input type="hidden" name="rate[]" value="{{ $item->model->rate }}">
                                <input type="hidden" name="supplier_id[]" value="{{ $item->model->user_id }}">
                                <input type="hidden" name="quantities[]" value="{{ $item->qty }}">
								
                        @endforeach --}}
                            
                        <!--/ End Order Widget -->
                        <!-- Order Widget -->
                        <div class="single-widget">
                            <h2>Payments</h2>
                            <div class="content">
                                <div class="checkbox">
                                    <label class="checkbox-inline" for="1"><input name="updates" id="1" type="checkbox"> Check Payments</label>
                                    <label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox"> Cash On Delivery</label>
                                    <label class="checkbox-inline" for="3"><input name="news" id="3" type="checkbox"> PayPal</label>
                                </div>
                            </div>
                        </div>
                        <!--/ End Order Widget -->
                        <!-- Payment Method Widget -->
                        <div class="single-widget payement">
                            <div class="content">
                                <img src="{{ asset('themes/2/images/payment-method.png') }}" alt="#">
                            </div>
                        </div>
                        <!--/ End Payment Method Widget -->
                        <!-- Button Widget -->
                        <div class="single-widget get-button">
                            <div class="content">
                                <div class="button">
                                    @if(Auth::user())
                                        <input type="hidden" name="username" value="{{ Auth::user()->username }}">
                                        <input type="hidden" name="orderedBy" value="{{ Auth::user()->id }}">
                                    @else
                                        <input type="hidden" name="username" value="Guest">
                                        <input type="hidden" name="orderedBy" value="">
                                    @endif

                                    <input type="submit" name="btnsub" class="btn btn-primary" value="Place Order">
                                </div>
                            </div>
                        </div>
                        <!--/ End Button Widget -->
                    </div>
                </div>    
            </div>
            </form>
		</div>
	</div>


@endsection

@section('footer')

<footer class="footer">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 footer_col">
                <div class="footer_column footer_contact">
                    <div class="logo_container">
                        <div class="logo"><a href="#">BakhariGhar</a></div>
                    </div>
                    <div class="footer_title">Got Question? Call Us 24/7</div>
                    <div class="footer_phone">+38 068 005 3570</div>
                    <div class="footer_contact_text">
                        <p>17 Princess Road, London</p>
                        <p>Grester London NW18JR, UK</p>
                    </div>
                    <div class="footer_social">
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                            <li><a href="#"><i class="fab fa-google"></i></a></li>
                            <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-2 offset-lg-2">
                <div class="footer_column">
                    <div class="footer_title">Find it Fast</div>
                    <ul class="footer_list">
                        <li><a href="#">Computers & Laptops</a></li>
                        <li><a href="#">Cameras & Photos</a></li>
                        <li><a href="#">Hardware</a></li>
                        <li><a href="#">Smartphones & Tablets</a></li>
                        <li><a href="#">TV & Audio</a></li>
                    </ul>
                    <div class="footer_subtitle">Gadgets</div>
                    <ul class="footer_list">
                        <li><a href="#">Car Electronics</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="footer_column">
                    <ul class="footer_list footer_list_2">
                        <li><a href="#">Video Games & Consoles</a></li>
                        <li><a href="#">Accessories</a></li>
                        <li><a href="#">Cameras & Photos</a></li>
                        <li><a href="#">Hardware</a></li>
                        <li><a href="#">Computers & Laptops</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="footer_column">
                    <div class="footer_title">Customer Care</div>
                    <ul class="footer_list">
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">Order Tracking</a></li>
                        <li><a href="#">Wish List</a></li>
                        <li><a href="#">Customer Services</a></li>
                        <li><a href="#">Returns / Exchange</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Product Support</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</footer>

<!-- Copyright -->

<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col">
                
                <div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
                    <div class="copyright_content"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
</div>

{{-- <script src="{{ asset('themes/7/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('themes/7/styles/bootstrap4/popper.js') }}"></script>
<script src="{{ asset('themes/7/styles/bootstrap4/bootstrap.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/TweenMax.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/TimelineMax.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/scrollmagic/ScrollMagic.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/animation.gsap.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/ScrollToPlugin.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script>
<script src="{{ asset('themes/7/plugins/slick-1.8.0/slick.js') }}"></script>
<script src="{{ asset('themes/7/plugins/easing/easing.js') }}"></script> --}}

<script src="{{ asset('themes/7/plugins/Isotope/isotope.pkgd.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/jquery-ui-1.12.1.custom/jquery-ui.js') }}"></script>
<script src="{{ asset('themes/7/plugins/parallax-js-master/parallax.min.js') }}"></script>

<script src="{{ asset('themes/7/js/custom.js') }}"></script>
<script src="{{ asset('themes/7/js/shop_custom.js') }}"></script>

</body>

</html>

@endsection