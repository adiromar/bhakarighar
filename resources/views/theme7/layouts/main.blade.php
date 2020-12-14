<!DOCTYPE html>
<html lang="en">
<head>
<title>Bhakarighar.com - Online Showroom</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="csrf-token" content="{{ csrf_token() }}">

<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/bootstrap4/bootstrap.min.css') }}">
{{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> --}}

<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css') }}" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.carousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/animate.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/slick-1.8.0/slick.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/main_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/product_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/responsive.css') }}">

<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/style.css') }}">



</head>

<body>

<div class="super_container">
	

	@yield('head')
		
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

	{{-- @yield('trends') --}}

	<!-- Reviews -->

	{{-- @yield('reviews') --}}

	<!-- Recently Viewed -->

	{{-- @yield('recentlyviewed') --}}
	@yield('modals')
	
	<!-- Brands -->
	@yield('brands')

	<!-- Modal -->
    @include('theme7.layouts.modal')
	<!-- Modal end -->
	
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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	
	@yield('footer')

	
	
	{{-- @if($previewEdit == 1)
	   <script>
		$(window).on('load', function () {
			Swal.fire({
				title: 'Live Preview Edit',
				text: 'Add Items From Front End',
				icon: 'info',
				confirmButtonText: 'Ok'
			})
		});
	   </script>
	   @endif --}}

	<script>
		$(document).ready(function(){
	        $('.show-modal').click(function(e){
				e.preventDefault();
				$('#featured_modal').modal('show');
			});

			$('.show-modal_2').click(function(e){
				e.preventDefault();
				$('#product_modal').modal('show');
			});

			$('.show-slider').click(function(e){
				e.preventDefault();
				$('#slider_modal').modal('show');
			});

			

	        // Add to Cart 
			$('.add-to-cart').click(function(e){
				e.preventDefault();
				// alert('clicked');
				let productId = $(this).data('productid');
				let productName = $(this).data('product');
				let rate = $(this).data('rate');

				// alert(rate);
				$.ajaxSetup({
				  headers: {
				    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				  }
				});

				$.ajax({
	               type:'POST',
	               url:'{{ url("cart/ajax") }}',
	               data: { productId, productName, rate },
	               success:function(data) {
	               		if ( data.status == 200 ) {
	               			
	               			let count = $('.total-count').text();
	               			let cartcount = parseInt(count) + 1;
	               			$('.total-count').text(cartcount);
	               			$('.cart-count').text(cartcount + ' Item(s)');
							console.log('cart updated');

	               			Swal.fire({
							  title: 'Success!',
							  text: 'Item added to your cart.',
							  icon: 'success',
							  confirmButtonText: 'Ok'
							})

	               		}else{
							console.log('something is wrong');
	               			Swal.fire({
							  text: 'Item already on your cart.',
							  icon: 'error',
							  confirmButtonText: 'Exit'
							})
	               		}
	               }
	            });

			});

			// Add to Wish List
			$('.add-to-wishlist').click(function(e){
				e.preventDefault();

				let productId = $(this).data('product');

				$.ajaxSetup({
				  headers: {
				    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				  }
				});

				$.ajax({
					type:'POST',
					url:'{{ url("wishlist/ajax") }}',
					data: { productId },
					success:function(data) {
						
						if ( data.status == 200 ) {
							let count = $('.total-count-wish').text();
	               			let cartcount = parseInt(count) + 1;
	               			$('.total-count-wish').text(cartcount);

	               			Swal.fire({
							  title: 'Success!',
							  text: data.message,
							  icon: 'success',
							  confirmButtonText: 'Ok'
							})

	               		}else{
	               			
	               			Swal.fire({
							  text: 'Please login to add this item in the wish list.',
							  icon: 'error',
							  confirmButtonText: 'Exit'
							})
	               		}

					}
	            });

			});

			// Sort Product
			$('.sort-product').change(function(){

				window.location = `?sort=` + $(this).val();

			});

			// validation for slider image
			var _URL = window.URL || window.webkitURL;
			$("#file_slider").change(function (e) {
				var file, img;
				if ((file = this.files[0])) {
					img = new Image();
					var objectUrl = _URL.createObjectURL(file);
					img.onload = function () {
						// alert(this.width + " " + this.height);
            if(this.width >= 520 || this.height >= 460){
              // alert('success');
              $('.popup_form input[type="submit"]').prop('disabled', false);
              $(".slider-error").empty();
            }else{
              // alert('Failure');
              $(".slider-error").text("Image Size Too Small. Please Upload Larger Image.");
              $('.popup_form input[type="submit"]').prop('disabled', true);
            }
						_URL.revokeObjectURL(objectUrl);
					};
					img.src = objectUrl;
				}
			});

			// validation for featured image
			$("#featured_file").change(function (e) {
				var file, img;
				if ((file = this.files[0])) {
					img = new Image();
					var objectUrl = _URL.createObjectURL(file);
					img.onload = function () {
						// alert(this.width + " " + this.height);
            if(this.width >= 520 || this.height >= 460){
              // alert('success');
              $('.popup_form input[type="submit"]').prop('disabled', false);
              $(".featured-error").empty();
            }else{
              // alert('Failure');
              $(".featured-error").text("Image Size Too Small. Please Upload Larger Image.");
              $('.popup_form input[type="submit"]').prop('disabled', true);
            }
						_URL.revokeObjectURL(objectUrl);
					};
					img.src = objectUrl;
				}
			});

			// validation for product image
			$("#product_file").change(function (e) {
				var file, img;
				if ((file = this.files[0])) {
					img = new Image();
					var objectUrl = _URL.createObjectURL(file);
					img.onload = function () {
						// alert(this.width + " " + this.height);
            if(this.width >= 520 || this.height >= 460){
              // alert('success');
              $('.popup_form input[type="submit"]').prop('disabled', false);
              $(".product-error").empty();
            }else{
              // alert('Failure');
              $(".product-error").text("Image Size Too Small. Please Upload Larger Image.");
              $('.popup_form input[type="submit"]').prop('disabled', true);
            }
						_URL.revokeObjectURL(objectUrl);
					};
					img.src = objectUrl;
				}
			});

			$('.submit-form').change(function(e){
                e.preventDefault();
                // alert("hello");
		        $(this).submit();
	        });

		});
	</script>

	

	