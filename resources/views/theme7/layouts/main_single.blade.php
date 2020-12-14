<!DOCTYPE html>
<html lang="en">
<head>
<title>iPasal - Online Showroom</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="csrf-token" content="{{ csrf_token() }}">

{{-- <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/bootstrap4/bootstrap.min.css') }}"> --}}
{{-- <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css') }}" rel="stylesheet" type="text/css"> --}}
{{-- <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.carousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/animate.css') }}"> --}}
{{-- <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/slick-1.8.0/slick.css') }}"> --}}
{{-- <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/main_styles.css') }}"> --}}
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/product_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/responsive.css') }}">

@yield('head')
</head>

<body>

<div class="super_container">
	



		
		
		
		
		@yield('menu')

	{{-- </header> --}}
	@yield('content')
	
	<!-- Banner -->

	@yield('banner')

	{{-- Deals section --}}
	
	@yield('deals')

    <!-- Characteristics / delivery-->

	@yield('delivery')
    
	<!-- Popular Categories -->

	@yield('popularsection')

	<!-- Banner -->

	@yield('sliders')

	<!-- Hot New Arrivals -->

	@yield('arrivals')

	<!-- Best Sellers -->

	@yield('bestsellers')

	<!-- Adverts -->

	@yield('adverts')

	<!-- Trends -->

	@yield('trends')

	<!-- Reviews -->

	@yield('reviews')

	<!-- Recently Viewed -->

	@yield('recentlyviewed')

	<!-- Brands -->
	@yield('brands')

	<!-- Newsletter -->

	<div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
						<div class="newsletter_title_container">
							<div class="newsletter_icon"><img src="images/send.png" alt=""></div>
							<div class="newsletter_title">Sign up for Newsletter</div>
							<div class="newsletter_text"><p>...and receive %20 coupon for first shopping.</p></div>
						</div>
						<div class="newsletter_content clearfix">
							<form action="#" class="newsletter_form">
								<input type="email" class="newsletter_input" required="required" placeholder="Enter your email address">
								<button class="newsletter_button">Subscribe</button>
							</form>
							<div class="newsletter_unsubscribe_link"><a href="#">unsubscribe</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	@yield('footer')