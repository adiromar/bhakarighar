<?php $slides = App\Sliders::where('showSlider', '1')->latest()->skip(1)->take(2)->get(); ?>
@if( count($slides) > 0 )
<div class="banner_2">
    <div class="banner_2_background" style="background-image:url({{ asset('themes/7/images/banner_2_background.jpg') }})"></div>
    
    <div class="banner_2_container">
        <div class="banner_2_dots"></div>
        <!-- Banner 2 Slider -->

        <div class="owl-carousel owl-theme banner_2_slider">

            <!-- Banner 2 Slider Item -->
        @foreach( $slides as $slide )
            <div class="owl-item">
                <div class="banner_2_item">
                    <div class="container fill_height">
                        <div class="row fill_height">
                            <div class="col-lg-4 col-md-6 fill_height">
                                <div class="banner_2_content">
                                <?php $product = App\Product::find($slide->productId); ?>
                                    {{-- <div class="banner_2_category">{{ $product->category->name }}</div> --}}
                                    <div class="banner_2_title">{{ $slide->textMain }}</div>
                                    <div class="banner_2_text">{{ $slide->textSecondary }}</div>

                                    @if($product)
                                    <div class="button banner_2_button"><a href="{{ route('view.product.new7', $product->slug) }}">Explore</a></div>
                                    @else

                                    @endif
                                </div>
                                
                            </div>
                            <div class="col-lg-8 col-md-6 fill_height">
                                <div class="banner_2_image_container">
                                    <div class="banner_2_image"><img src="{{ 'uploads/sliders/' . $slide->sliderImage }}" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>			
                </div>
            </div>
        @endforeach

        </div>
    </div>
</div>
@endif