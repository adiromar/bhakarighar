<div class="viewed">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="viewed_title_container">
                    <h3 class="viewed_title">Products Most Bought</h3>
                    <div class="viewed_nav_container">
                        <div class="viewed_nav viewed_prev"><i class="fas fa-chevron-left"></i></div>
                        <div class="viewed_nav viewed_next"><i class="fas fa-chevron-right"></i></div>
                    </div>
                </div>

                <div class="viewed_slider_container">
                    
                    <!-- Recently Viewed Slider -->

                    <div class="owl-carousel owl-theme viewed_slider">
                        @if( $featuredProducts = App\Product::productMostBought(12) )
                        @foreach( $featuredProducts as $product )
                        <!-- Recently Viewed Item -->
                        <div class="owl-item">
                            <div class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="viewed_image"><a href="{{ route('view.product.new7', $product->slug) }}"><img src="{{  asset('uploads/products/'.$product->featuredImage) }}" alt=""></a></div>
                                <div class="viewed_content text-center">
                                <div class="viewed_price">Rs. {{ $product->rate }}<span>Rs. {{ $product->actualRate }}</span></div>
                                    <div class="viewed_name"><a href="{{ route('view.product.new7', $product->slug) }}">{{ $product->productName }}</a></div>
                                </div>
                                <ul class="item_marks">
                                <li class="item_mark item_discount">{{ $product->discountPercent }}</li>
                                    <li class="item_mark item_new">new</li>
                                </ul>
                            </div>
                        </div>
                        @endforeach
                        @endif

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>