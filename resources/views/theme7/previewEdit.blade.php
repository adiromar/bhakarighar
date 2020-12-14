@extends('theme7.layouts.main')

@section('head')

<div class="alert alert-primary alert-dismissible fade show" role="alert" style="text-align: center">
	<strong>Preview Edit Section </strong> Only Authorized Users can View/Edit this section.
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	  <span aria-hidden="true">&times;</span>
	</button>
  </div>
  
@include('theme7.layouts.head')

@endsection

@section('menu')

@include('theme7.layouts.menu')

@endsection

@section('sliders')

	@include('theme7.layouts.sliders')

@endsection

@section('categorysection')

	@include('theme7.layouts.categorysection')

@endsection


@section('deals')
	<!-- Deals of the week -->
	<style>
		.show-modal{
			color: var(--blue);
			font-size: 14px;
		}
	</style>
		<div class="deals_featured">
			<div class="container">
				<div class="row">
					<div class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">
						
						<!-- Deals -->
	
						<div class="deals">
							<div class="deals_title">Deals of the Week</div>
							<div class="deals_slider_container">
								
								<!-- Deals Slider -->
								<div class="owl-carousel owl-theme deals_slider">
	
									@if( $products = App\Product::where('deal_of_week', '1')->latest()->get()->take(5) )
	
									
									@foreach($products as $product)
									<!-- Deals Item -->
									<div class="owl-item deals_item">
										<div class="deals_image"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage ) }}" alt=""></a></div>
										<div class="deals_content">
											<div class="deals_info_line d-flex flex-row justify-content-start">
												<div class="deals_item_category"><a href="#">{{ $product->categoryName }}</a></div>
											<div class="deals_item_price_a ml-auto">Rs. {{ $product->actualRate }}</div>
											</div>
											<div class="deals_info_line d-flex flex-row justify-content-start">
												<div class="deals_item_name">{{ $product->productName }}</div>
											<div class="deals_item_price ml-auto">Rs. {{ $product->rate }}</div>
											</div>
											<div class="available">
												<div class="available_line d-flex flex-row justify-content-start">
												<div class="available_title">Available: <span>{{ $product->availableItems }}</span></div>
												<div class="sold_title ml-auto">Already sold: <span>{{ $product->totalSoldQuantity }}</span></div>
												</div>
	
												<?php
												$available = round($product->availableItems / $product->quantity)*100;
												?>
												<div class="available_bar"><span style="width:{{ $available }}%"></span></div>
											</div>
											
											<div class="deals_timer d-flex flex-row align-items-center justify-content-start">
												<div class="deals_timer_title_container">
													<div class="deals_timer_title">Hurry Up</div>
													<div class="deals_timer_subtitle">Offer ends in:</div>
												</div>
											<div id="demo{{ $product->id }}"></div>
											
												<div class="deals_timer_content ml-auto">
												<div class="" id="defaultCountdown"></div>
													{{-- <div class="deals_timer_box clearfix" data-target-time="">
														<div class="deals_timer_unit">
															<div id="deals_timer1_hr" class="deals_timer_hr">24</div>
															<span>hours</span>
														</div>
														<div class="deals_timer_unit">
															<div id="deals_timer1_min" class="deals_timer_min"></div>
															<span>mins</span>
														</div>
														<div class="deals_timer_unit">
															<div id="deals_timer1_sec" class="deals_timer_sec"></div>
															<span>secs</span>
														</div>
													</div> --}}
												<div id="demo_timer_{{ $product->id }}" data-dow="{{ $product->dow_datetime }}" style="font-size:15px;font-weight:500;color: red;"></div>

												</div>
											</div>
											<script>
												// Set the date we're counting down to
												var time_dow = '<?= $product->dow_datetime ?>';
												// var time_dow = 'Jul 5, 2020 15:37:25';
												var countDownDate = new Date(time_dow).getTime();
												
												// Update the count down every 1 second
												var x = setInterval(function() {
												
												  // Get today's date and time
												  var now = new Date().getTime();
													
												  // Find the distance between now and the count down date
												  var distance = countDownDate - now;
													
												  // Time calculations for days, hours, minutes and seconds
												  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
												  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
												  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
												  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
													
												  // Output the result in an element with id="demo"
												  document.getElementById("demo_timer_"+'<?= $product->id ?>').innerHTML = days + "d " + hours + "h "
												  + minutes + "m " + seconds + "s ";
													
												  // If the count down is over, write some text 
												  if (distance < 0) {
													clearInterval(x);
													document.getElementById("demo_timer_"+'<?= $product->id ?>').innerHTML = "EXPIRED";
												  }
												}, 1000);
												</script>


											<hr>
											<div class="col-md-12">
												<a href="{{ route('products.edit', $product->id) }}" target="_blank" class="btn-white float-left"><i class="fa fa-pencil"></i> Edit</a>
												<a href="{{ route('deal_of_week') }}" target="_blank" class="btn-white float-left"><i class="fa fa-pencil"></i> + Add New</a>
												<a href="" class="float-right">
													<form action="{{route('products.destroy', $product->id)}}" onclick="event.preventDefault();
													var r=confirm('Are you sure you want to delete this item?');
													if(r== true){ this.submit(); }" method="post">
												{{ csrf_field() }}
												{{ method_field('delete') }}
												<i class="fa fa-trash"><input type="hidden" class="delete-btn"></i>
												</form>
											</a>
											</div>
										</div>
									</div>
							
								
									@endforeach
									@endif
									
	
								</div>
	
							</div>
	
							<div class="deals_slider_nav_container">
								<div class="deals_slider_prev deals_slider_nav"><i class="fas fa-chevron-left ml-auto"></i></div>
								<div class="deals_slider_next deals_slider_nav"><i class="fas fa-chevron-right ml-auto"></i></div>
							</div>
						</div>
						
						<!-- Featured -->
						
						<div class="featured">
							<div class="tabbed_container">
								<div class="tabs">
									<ul class="clearfix">
										<li class="active">Featured</li>
										<li>On Sale</li>
										{{-- <li>Best Rated</li> --}}
									</ul>
									<div class="tabs_line"><span></span></div>
								</div>
	
								<!-- Product Panel -->
								<div class="product_panel panel active">
									<div class="featured_slider slider">
										{{-- @php
										dd($featured_products);
									@endphp --}}
										{{-- @if( $featuredProducts = App\Product::where('featured', 1)->latest()->get()->take(12) ) --}}
										@foreach( $featured_products as $product )
										<!-- Slider Item -->
										
										<div class="featured_slider_item">
											<div class="border_active"></div>
											<div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
												<div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage ) }}" alt=""></a></div>
												<div class="product_content">
													<div class="product_price discount">Rs. {{ $product->rate }}<span>Rs. {{ $product->actualRate }}</span></div>
													<div class="product_name"><div><a href="{{ route('view.product.new7', $product->slug) }}">{{ $product->productName }}</a></div></div>
													<div class="product_extras">
														<form action="{{route('products.destroy', $product->id)}}" onclick="event.preventDefault();
															var r=confirm('Are you sure you want to delete this item?');
															if(r== true){ this.submit(); }" method="post">
														{{ csrf_field() }}
														{{ method_field('delete') }}
														<i class="fa fa-trash"><input type="hidden" class="delete-btn"></i>
														</form>
														
														<button class="product_cart_button"><a class="btn_white" href="{{ route('products.edit', $product->id) }}" target="_blank" style="color: #fff;">Edit Product</a></button>
															
													</div>
												</div>
													
												<ul class="product_marks">
													<li class="product_mark product_discount">{{ $product->discountPercent }}</li>
													<li class="product_mark product_new">new</li>
												</ul>
											</div>
										</div>
										@endforeach
										{{-- @endif --}}
										
										
									</div>
									
									<div class="featured_slider_dots_cover"></div>
									
								</div>
	
								<!-- Sales Product Panel -->
								@if( $products = App\Product::productSales(6) )
	
								<div class="product_panel panel">
									<div class="featured_slider slider">
	
										@foreach ( $products as $product )
	
										<!-- Slider Item -->
										<div class="featured_slider_item">
											<div class="border_active"></div>
											<div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
												<div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage ) }}" alt=""></a></div>
												<div class="product_content">
													<div class="product_price discount">Rs. {{ $product->rate }}<span>Rs. {{ $product->actualRate }}</span></div>
													<div class="product_name"><div><a href="{{ route('view.product.new7', $product->slug) }}">{{ $product->productName }}</a></div></div>
													<div class="product_extras">
														<form action="{{route('products.destroy', $product->id)}}" onclick="event.preventDefault();
															var r=confirm('Are you sure you want to delete this item?');
															if(r== true){ this.submit(); }" method="post">
														{{ csrf_field() }}
														{{ method_field('delete') }}
														<i class="fa fa-trash"><input type="hidden" class="delete-btn"></i>
														</form>

														<button class="product_cart_button"><a class="btn_white" href="{{ route('products.edit', $product->id) }}">Edit Product</a></button>
													</div>
												</div>
												
												<ul class="product_marks">
													<li class="product_mark product_discount">{{ $product->discountPercent }}</li>
													<li class="product_mark product_new">new</li>
												</ul>
											</div>
										</div>
										@endforeach
										
	
									</div>
									<div class="featured_slider_dots_cover"></div>
								</div>
								
								@endif
								
							</div>
						</div>
	
					</div>
				</div>
			</div>
		</div>
	
	
		@auth
		
		@if(Auth::user()->roles()->first()->role == 'Supplier') 
				@if($previewEdit == 1)
				<div class="col-md-12 preview_edit" style="text-align: center;background: #eff6fa;padding:12px;margin-top: 30px;">
					<a class="show-modal btn btn-primary btn-sm" style="color:#fff !important">+ Add Featured</a>
					<a class="show-modal_2 btn btn-secondary btn-sm" style="color:#fff !important">+ Sales</a>
				</div>
				@endif
		@endif
		@endauth
		@guest
			
		@endguest
	
@endsection

@section('banner')

<?php $slides = App\Sliders::where('showSlider', '1')->latest()->get()->take(1); ?>
@if( count($slides) )
@foreach($slides as$slide)

<div class="banner">
    <div class="banner_background" style="background-image:url({{ asset('themes/7/images/banner_background.jpg') }})"></div>
    <div class="container fill_height">
        <div class="row fill_height">
            <div class="banner_product_image"><img src="{{ '../uploads/sliders/' . $slide->sliderImage }}" alt="slide img"></div>
            <div class="col-lg-5 offset-lg-4 fill_height">
                <div class="banner_content">
                    <h1 class="banner_text">{{ $slide->textMain }}</h1>
                    {{-- <div class="banner_price"><span>$530</span>$460</div> --}}
                    <div class="banner_product_name">{{ $slide->textSecondary }}</div>
					<div class="button banner_button"><a href="{{ route('sliders.edit', $slide->sliderId) }}" target="_blank">Edit this Slider</a>
					</div>
					<div class="button banner_button"><a href="#" class="show-slider">Add New</a>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>

@endforeach
@endif
@endsection

@section('productssection')

	@include('theme7.layouts.productssection')

@endsection

@section('popularsection')

	@include('theme7.layouts.popularsection')

@endsection

@section('bestsellers')

	@include('theme7.layouts.bestsellers')

@endsection

@section('threecolumns')

	@include('theme7.layouts.hotnewarrivals')

@endsection

@section('services')

	@include('theme7.layouts.bestsellers')

@endsection

@section('recentlyviewed')

	@include('theme7.layouts.recently_views')

@endsection

@section('trends')

	@include('theme7.layouts.trends')

@endsection


@section('adverts')

	@include('theme7.layouts.adverts')

@endsection

@section('reviews')

	@include('theme7.layouts.latest_reviews')

@endsection

@section('arrivals')

<div class="new_arrivals">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title">Hot New Arrivals & Offers !!</div>
                        @if( $tags = App\Product::recentProductsTags() )
               
                        <ul class="clearfix">
                            <?php $active = 'active'; ?>

                            <li class="active">Arrivals</li>

                            @foreach ( $tags as $tag )
                            
                            <li class="">{{ $tag->name }}</li>
                            <?php $active = ''; ?>
                            @endforeach
                        </ul>

                        @endif
                        <div class="tabs_line"><span></span></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" style="z-index:1;">

                            {{-- @foreach( $tags as $tag) --}}
                            <?php $products = App\Product::inRandomOrder()->get()->take(8); 
                                    // dd($products);
                                    ?>
                            <!-- Featured Product Panel -->
                            <div class="product_panel panel active">
                                <div class="arrivals_slider slider">

                                    
                                    @foreach( $products as $product )
                                    <!-- Slider Item -->
                                    <div class="arrivals_slider_item">
                                        <div class="border_active"></div>
                                        <div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                            <div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage) }}" alt=""></a></div>
                                            <div class="product_content">
                                            <div class="product_price">Rs. {{ $product->rate }}</div>
                                                <div class="product_name"><div><a href="{{ route('view.product.new7', $product->slug) }}">{{ $product->productName }}</a></div></div>
                                                <div class="product_extras">
													<form action="{{route('products.destroy', $product->id)}}" onclick="event.preventDefault();
														var r=confirm('Are you sure you want to delete this item?');
														if(r== true){ this.submit(); }" method="post">
													{{ csrf_field() }}
													{{ method_field('delete') }}
													<i class="fa fa-trash"><input type="hidden" class="delete-btn"></i>
													</form>

                                                    <button class="product_cart_button"><a class="btn_white" href="{{ route('products.edit', $product->id) }}">Edit Product</a></button>
                                                </div>
											</div>
											
                                            <ul class="product_marks">
                                                <li class="product_mark product_discount">-25%</li>
                                                <li class="product_mark product_new">new</li>
                                            </ul>
                                        </div>
                                    </div>

                                    @endforeach

                                </div>
                                <div class="arrivals_slider_dots_cover"></div>
                            </div>

                            <?php $class = ''; ?>
              {{-- @endforeach --}}


              @foreach( $tags as $tag )
                            <!-- Audio visual Product Panel -->
                            <div class="product_panel panel">
                                <div class="arrivals_slider slider">

                                    <?php $products = App\Tags::find($tag->id)->products()->inRandomOrder()->get()->take(20); ?>
                                    @foreach( $products as $product )

                                    <!-- Slider Item -->
                                    <div class="arrivals_slider_item">
                                        <div class="border_active"></div>
                                        <div class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                            <div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage) }}" alt=""></a></div>
                                            <div class="product_content">
                                            <div class="product_price">Rs. {{ $product->rate }}</div>
                                            <div class="product_name"><div><a href="{{ route('view.product.new7', $product->slug) }}"> {{ $product->productName }}</a></div></div>
                                                <div class="product_extras">
                                                    <form action="{{route('products.destroy', $product->id)}}" onclick="event.preventDefault();
														var r=confirm('Are you sure you want to delete this item?');
														if(r== true){ this.submit(); }" method="post">
													{{ csrf_field() }}
													{{ method_field('delete') }}
													<i class="fa fa-trash"><input type="hidden" class="delete-btn"></i>
													</form>
													
                                                    <button class="product_cart_button"><a class="btn_white" href="{{ route('products.edit', $product->id) }}" target="_blank">Edit Product</a></button>
                                                </div>
                                            </div>
                                            <ul class="product_marks">
                                                <li class="product_mark product_discount">{{ $product->discountPercent }}</li>
                                                <li class="product_mark product_new">new</li>
                                            </ul>
                                        </div>
                                    </div>
                                @endforeach
                                    


                                </div>
                                <div class="arrivals_slider_dots_cover"></div>
                            </div>
                        @endforeach


                        </div>

                        <div class="col-lg-3">
                            {{-- <div class="arrivals_single clearfix">
                                <div class="d-flex flex-column align-items-center justify-content-center">
                                    <div class="arrivals_single_image"><img src="images/new_single.png" alt=""></div>
                                    <div class="arrivals_single_content">
                                        <div class="arrivals_single_category"><a href="#">Smartphones</a></div>
                                        <div class="arrivals_single_name_container clearfix">
                                            <div class="arrivals_single_name"><a href="#">LUNA Smartphone</a></div>
                                            <div class="arrivals_single_price text-right">$379</div>
                                        </div>
                                        <div class="rating_r rating_r_4 arrivals_single_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                        <form action="#"><button class="arrivals_single_button">Add to Cart</button></form>
                                    </div>
                                    <div class="arrivals_single_fav product_fav active"><i class="fas fa-heart"></i></div>
                                    <ul class="arrivals_single_marks product_marks">
                                        <li class="arrivals_single_mark product_mark product_new">new</li>
                                    </ul>
                                </div>
                            </div> --}}
                        </div>

                    </div>
                            
                </div>
            </div>
        </div>
    </div>		
</div>

@endsection

@section('brands')

	@include('theme7.layouts.brands')

@endsection

@section('delivery')

	@include('theme7.layouts.delivery')

@endsection

@section('content')
	
@endsection

@section('modals')
    @include('theme7.layouts.insert_modals')
@endsection

@section('footer')
	@include('theme7.layouts.footer')
@endsection

@section('footer_single')
	
@endsection