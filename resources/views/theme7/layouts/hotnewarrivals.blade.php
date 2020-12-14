<div class="new_arrivals">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title">Hot New Arrivals & Offers</div>
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
                                                    {{-- <div class="product_color">
                                                        <input type="radio" checked name="product_color" style="background:#b19c83">
                                                        <input type="radio" name="product_color" style="background:#000000">
                                                        <input type="radio" name="product_color" style="background:#999999">
                                                    </div> --}}
                                                    <button class="product_cart_button add-to-cart" title="Add to cart" data-productid="{{$product->id}}" data-product="{{ $product->productName }}" data-rate="{{ $product->rate }}">Add to Cart</button>
                                                </div>
                                            </div>
                                            <div class="product_fav add-to-wishlist" data-product="{{ $product->id }}"><i class="fas fa-heart"></i></div>
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

              @if($tags)
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
                                                    {{-- <div class="product_color">
                                                        <input type="radio" checked name="product_color" style="background:#b19c83">
                                                        <input type="radio" name="product_color" style="background:#000000">
                                                        <input type="radio" name="product_color" style="background:#999999">
                                                    </div> --}}
                                                    <button class="product_cart_button add-to-cart" title="Add to cart" data-productid="{{$product->id}}" data-product="{{ $product->productName }}" data-rate="{{ $product->rate }}"">Add to Cart</button>
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
                                <div class="arrivals_slider_dots_cover"></div>
                            </div>
                        @endforeach
                        @endif

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