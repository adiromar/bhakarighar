@extends('theme7.layouts.main')

@section('head')
    @include('theme7.layouts.head')

    <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/plugins/jquery-ui-1.12.1.custom/jquery-ui.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/shop_styles.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/shop_responsive.css') }}">


@endsection

@section('content')

	


	<!-- search section -->

	<div class="shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

					<!-- Shop Sidebar -->
					<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">Categories</div>
							<ul class="sidebar_categories">
								@foreach( App\Category::orderBy('name')->get() as $category )
									<li><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }}</a></li>
								@endforeach
							</ul>
						</div>
					</div>

				</div>

				<div class="col-lg-9">
					
					<!-- Shop Content -->

					<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count"><span>{{ count($products) }}</span> products found</div>
							<div class="shop_sorting">
								<span>Sort by:</span>
								<ul>
									<li>
										<span class="sorting_text">highest rated<i class="fas fa-chevron-down"></span></i>
										<ul>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>highest rated</li>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "name" }'>name</li>
											<li class="shop_sorting_button"data-isotope-option='{ "sortBy": "price" }'>price</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>

						<div class="product_grid">
							<div class="product_grid_border"></div>

                            @if( count($products) )
                            @foreach ( $products as $product )
							<!-- Product Item -->
							<div class="product_item discount">
								<div class="product_border"></div>
								<div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage) }}" alt=""></a></div>
								<div class="product_content">
                                <div class="product_price">Rs. {{ $product->rate }}<span>Rs. {{ $product->actualPrice }}</span></div>
									<div class="product_name"><div><a href="{{ route('view.product.new7', $product->slug) }}" tabindex="0">{{ $product->productName}}</a></div></div>
								</div>
								<div class="product_fav"><i class="fas fa-heart"></i></div>
								<ul class="product_marks">
									<li class="product_mark product_discount">-25%</li>
									<li class="product_mark product_new">new</li>
								</ul>
                            </div>
                            
                            @endforeach
							@else
							<div class="col-md-12 p-3">
								<h4>No Item Found.</h4>
							</div>
							@endif

						</div>

                        <!-- Shop Page Navigation -->
						<div class="row">
							<div class="col-md-12">
								{{ $products->links() }}
							</div>
						</div>

					</div>

				</div>
			</div>
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
                        <div class="logo"><a href="#">Bakharighar.com</a></div>
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
                    <div class="copyright_content">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <a href="http://encoderslab.com" target="_blank">Encoderslab.com</a>
</div>
                    <div class="logos ml-sm-auto">
                        <ul class="logos_list">
                            <li><a href="#"><img src="images/logos_1.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_2.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_3.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_4.png" alt=""></a></li>
                        </ul>
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
<script src="{{ asset('themes/7/plugins/easing/easing.js') }}"></script>
 --}}
<script src="{{ asset('themes/7/plugins/Isotope/isotope.pkgd.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/jquery-ui-1.12.1.custom/jquery-ui.js') }}"></script>
<script src="{{ asset('themes/7/plugins/parallax-js-master/parallax.min.js') }}"></script>

<script src="{{ asset('themes/7/js/custom.js') }}"></script>
<script src="{{ asset('themes/7/js/shop_custom.js') }}"></script>

</body>

</html>

@endsection