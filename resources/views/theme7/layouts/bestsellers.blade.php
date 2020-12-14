{{-- Best Sellers --}}

<div class="best_sellers">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabbed_container">
						<div class="tabs clearfix tabs-right">
							<div class="new_arrivals_title">Hot Best Sellers</div>
							<ul class="clearfix">
								<li class="active">Best Sellers</li>
								{{-- <li>Audio & Video</li>
								<li>Laptops & Computers</li>
								<li>Electronics</li> --}}
							</ul>
							<div class="tabs_line"><span></span></div>
						</div>

						<div class="bestsellers_panel panel active">

                            @if( $topsellers = App\Product::productMostBought() )
							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">
                            
                                @foreach ($topsellers as $product)
								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{ asset('uploads/products/thumbnails/' . $product->featuredImage) }}" alt=""></a></div>
										<div class="bestsellers_content">
											<div class="bestsellers_category"><a href="{{ route('view.product.new7', $product->slug) }}">{{ $product->categoryName }}</a></div>
											<div class="bestsellers_name"><a href="{{ route('view.product.new7', $product->slug) }}">{{ $product->productName }}</a></div>
											<div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
                                        <div class="bestsellers_price discount">Rs {{ $product->rate }}<span>{{ $product->actualRate }}</span></div>
										</div>
									</div>
									<div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">{{ $product->discountPercent }}</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
                                </div>
                                
                                @endforeach
                            </div>
                            
                            @endif

						</div>

						<div class="bestsellers_panel panel">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image"><img src="images/best_1.png" alt=""></div>
										<div class="bestsellers_content">
											<div class="bestsellers_category"><a href="#">Headphones s</a></div>
											<div class="bestsellers_name"><a href="product.html">Xiaomi Redmi Note 4</a></div>
											<div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<div class="bestsellers_price discount">$225<span>$300</span></div>
										</div>
									</div>
									<div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								

							</div>
						</div>

						<div class="bestsellers_panel panel">

							<!-- Best Sellers Slider -->

							<div class="bestsellers_slider slider">

								<!-- Best Sellers Item -->
								<div class="bestsellers_item discount">
									<div class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image"><img src="images/best_1.png" alt=""></div>
										<div class="bestsellers_content">
											<div class="bestsellers_category"><a href="#">Headphones</a></div>
											<div class="bestsellers_name"><a href="product.html">Xiaomi Redmi Note 4</a></div>
											<div class="rating_r rating_r_4 bestsellers_rating"><i></i><i></i><i></i><i></i><i></i></div>
											<div class="bestsellers_price discount">$225<span>$300</span></div>
										</div>
									</div>
									<div class="bestsellers_fav active"><i class="fas fa-heart"></i></div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>

								

							</div>
						</div>

					</div>
						
				</div>
			</div>
		</div>
	</div>