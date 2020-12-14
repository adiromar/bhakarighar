{{-- Popular categories --}}

<div class="popular_categories">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="popular_categories_content">
                    <div class="popular_categories_title">Popular Categories</div>
                    <div class="popular_categories_slider_nav">
                        <div class="popular_categories_prev popular_categories_nav"><i class="fas fa-angle-left ml-auto"></i></div>
                        <div class="popular_categories_next popular_categories_nav"><i class="fas fa-angle-right ml-auto"></i></div>
                    </div>
                    <div class="popular_categories_link"><a href="#">full catalog</a></div>
                </div>
            </div>
            
            <!-- Popular Categories Slider -->

            <div class="col-lg-9">
                
                <div class="popular_categories_slider_container">
                    
                    <div class="owl-carousel owl-theme popular_categories_slider">
                        
                        @foreach( App\Category::where('featured', 1)->inRandomOrder()->get()->take(10) as $category)
				
                        <!-- Popular Categories Item -->
                        <div class="owl-item">
                            
                            <div class="popular_category d-flex flex-column align-items-center justify-content-center">
                                <div class="popular_category_image"><a href="{{ route('category.product.new7', $category->slug) }}"><img src="{{ asset( $category->image ) }}" alt=""></a></div>
                                <div class="popular_category_text"><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }}</a></div>
                            </div>
                            
                        </div>
                        @endforeach
                        

                    </div>
                    {{-- @endforeach --}}
                </div>
                
            </div>
        </div>
    </div>
</div>