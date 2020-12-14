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

								@if( $products = App\Product::where('deal_of_week', '1')->get() )

								
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
												<div id="demo_timer_{{ $product->id }}" style="font-size:15px;font-weight:500;color: red;"></div>

											</div>
										</div>
									</div>
								</div>
								

								

							
								@endforeach
								@endif
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

                                    {{-- @if( $featuredProducts = App\Product::where('featured', 1)->latest()->get()->take(12) ) --}}
                                    @if($featured_products)
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
													{{-- <div class="product_color">
														<input type="radio" checked name="product_color" style="background:#b19c83">
														<input type="radio" name="product_color" style="background:#000000">
														<input type="radio" name="product_color" style="background:#999999">
													</div> --}}
													
													<button class="add-to-cart product_cart_button" title="Add to cart" data-productid="{{$product->id}}" data-product="{{ $product->productName }}" data-rate="{{ $product->rate }}">Add to Cart</button>
												
												</div>
											</div>
											
												<div class="product_fav add-to-wishlist" data-product="{{ $product->id }}"><i class="fas fa-heart"></i></div>

											<ul class="product_marks">
												<li class="product_mark product_discount">{{ $product->discountPercent }}</li>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
                                    </div>
                                    @endforeach
									@endif
									
									
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
													{{-- <div class="product_color">
														<input type="radio" checked name="product_color" style="background:#b19c83">
														<input type="radio" name="product_color" style="background:#000000">
														<input type="radio" name="product_color" style="background:#999999">
													</div> --}}
													
													<button class="add-to-cart product_cart_button" title="Add to cart" data-productid="{{$product->id}}" data-product="{{ $product->productName }}" data-rate="{{ $product->rate }}">Add to Cart</button>
													
												</div>
											</div>
											<div class="product_fav add-to-wishlist" data-product="{{ $product->id }}"><i class="fas fa-heart"></i></div>

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


	

	
	
