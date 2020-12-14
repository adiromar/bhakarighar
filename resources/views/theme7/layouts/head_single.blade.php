	<!-- Header -->
	<?php $settings = DB::table('site_settings')->first(); ?>
	<?php $contacts = json_decode($settings->contacts); ?>
	<header class="header">

		<!-- Top Bar -->

		<div class="top_bar">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-row">
					@if( $settings->contacts && count($contacts) > 0 )
					
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="{{ asset('themes/7/images/phone.png') }}" alt=""></div>
						@foreach( $contacts as $contact )
						{{ isset($contact->contactNo) ? $contact->contactNo : "" }} &nbsp;&nbsp;
						@endforeach
						</div>
					@endif
						<div class="top_bar_contact_item"><div class="top_bar_icon"><img src="{{ asset('themes/7/images/mail.png') }}" alt=""></div><a href="mailto:ipasal@gmail.com">ipasal@gmail.com</a></div>
						<div class="top_bar_content ml-auto">
							<div class="top_bar_menu">
								{{-- <ul class="standard_dropdown top_bar_dropdown">
									<li>
										<a href="#">English<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="#">Italian</a></li>
											<li><a href="#">Spanish</a></li>
											<li><a href="#">Japanese</a></li>
										</ul>
									</li>
									<li>
										<a href="#">$ US dollar<i class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="#">EUR Euro</a></li>
											<li><a href="#">GBP British Pound</a></li>
											<li><a href="#">JPY Japanese Yen</a></li>
										</ul>
									</li>
								</ul> --}}
							</div>
							<div class="top_bar_user">
								<div class="user_icon"><img src="{{ asset('themes/7/images/user.svg') }}" alt=""></div>
							@auth
								<div><a href="{{ url('/admin') }}">Admin</a></div>
							@endauth
							@guest
								<div><a href="{{ route('login.new7') }}">Register</a></div>
								<div><a href="{{ route('login.new7') }}">Sign in</a></div>
							@else
							<div><a href="{{ route('logout') }}" onclick="event.preventDefault();
								document.getElementById('logout-form').submit();">Logout
							</a></div>
							<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
								{{csrf_field()}}
							</form>
							@endguest
						</div>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<!-- Header Main -->
		<div class="header_main">
			<div class="container">
				<div class="row">

					<!-- Logo -->
					<div class="col-lg-2 col-sm-3 col-3 order-1">
						<div class="logo_container">
						<div class="logo"><a href="{{ url('/') }}" ><img src="{{ asset('themes/7/bkg_new.png') }}" height="200" width="200" style="object-fit: contain;"></a></div>
						</div>
					</div>

					<!-- Search -->
					<div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
						<div class="header_search">
							<div class="header_search_content ml-3">
								<div class="header_search_form_container">
									<form action="{{ route('search.product7') }}" method="post" class="header_search_form clearfix">
										{{ csrf_field() }}
										<input type="text" name="search" required="required" class="header_search_input" placeholder="Search for products...">
										<div class="custom_dropdown">
											<div class="custom_dropdown_list">
												<span class="custom_dropdown_placeholder clc">All Categories</span>
												<i class="fas fa-chevron-down"></i>
												<ul class="custom_list clc">
													@foreach( App\Category::inRandomOrder()->get()->take(10) as $category)
													
													<li><a class="clc" href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }}</a></li>

													@endforeach
												</ul>
											</div>
										</div>
										<button type="submit" class="header_search_button trans_300" value="Search"><img src="{{ asset('themes/7/images/search.png') }}" alt=""></button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- Wishlist -->
					<div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
						<div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
							<div class="wishlist d-flex flex-row align-items-center justify-content-end">
								<div class="wishlist_icon"><img src="{{ asset('themes/7/images/heart.png') }}" alt=""></div>
								<div class="wishlist_content">
									<div class="wishlist_text"><a href="{{ route('wish7', Auth::id()) }}">Wishlist</a></div>
									@php
										//$user = User::find( Auth::id() );
        								// $wishlist = App\wishlists::where(['deleted'=> 0, 'userID' => Auth::id()])->get();
										$userid = Auth::id();
										$wishlist = DB::table('wishlists')
											->where('userId' , $userid)
											->where('deleted' , '0')
                							->get();
										$wishcount = $wishlist->count();
									@endphp
									
								<div class="wishlist_count">{{ $wishcount }}
								<span class="total-count-wish"></span>
								</div>
								</div>
							</div>

							<!-- Cart -->
							<div class="cart">
								<div class="cart_container d-flex flex-row align-items-center justify-content-end">
									<div class="cart_icon">
										<img src="{{ asset('themes/7/images/cart.png') }}" alt="">
										<div class="cart_count"><span class="total-count">{{ Cart::instance('default')->count() }}</span></div>
									</div>
									<div class="cart_content">
									<div class="cart_text"><a href="{{ url('/show-cart') }}">Cart</a></div>
										<div class="cart_price total_count"><span class="cart-count"></span></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<nav class="main_nav">
			<div class="container">
				<div class="row">
					<div class="col">
						
						<div class="main_nav_content d-flex flex-row">

							<!-- Categories Menu -->

							{{-- <div class="cat_menu_container">
								<div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
									<div class="cat_burger"><span></span><span></span><span></span></div>
									<div class="cat_menu_text">categories</div>
								</div>
							
								<ul class="cat_menu">
									
									@foreach( $parentCategory as $category)
								<li><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }} ({{ $category->products()->count() }})<i class="fas fa-chevron-right"></i></a></li>
									@endforeach
								</ul>
							</div> --}}

							<!-- Main Nav Menu -->

							<div class="main_nav_menu ">
								<ul class="standard_dropdown main_nav_dropdown">
								<li><a href="{{ url('/') }}">Home<i class="fas fa-chevron-down"></i></a></li>
									
                                    <li><a href="{{ url('/privacy-policy') }}">Privacy Policy<i class="fas fa-chevron-down"></i></a></li>
                                    <li><a href="{{ url('/contact-us') }}">Contact Us<i class="fas fa-chevron-down"></i></a></li>
								</ul>
							</div>

							<!-- Menu Trigger -->

							<div class="menu_trigger_container ml-auto">
								<div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
									<div class="menu_burger">
										<div class="menu_trigger_text">menu</div>
										<div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</nav>

		
	</header>