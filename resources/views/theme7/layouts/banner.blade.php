<?php $slides = App\Sliders::where('showSlider', '1')->latest()->get()->take(1); ?>
@if( count($slides) )
@foreach($slides as$slide)

<div class="banner">
    <div class="banner_background" style="background-image:url({{ asset('themes/7/images/banner_background.jpg') }})"></div>
    <div class="container fill_height">
        <div class="row fill_height">
            <div class="banner_product_image"><img src="{{ 'uploads/sliders/' . $slide->sliderImage }}" alt="slide img"></div>
            <div class="col-lg-5 offset-lg-4 fill_height">
                <div class="banner_content">
                    <h1 class="banner_text">{{ $slide->textMain }}</h1>
                    {{-- <div class="banner_price"><span>$530</span>$460</div> --}}
                    <div class="banner_product_name">{{ $slide->textSecondary }}</div>
                    <?php $product = App\Product::find($slide->productId); ?>

                    @if($product)
                        <div class="button banner_button"><a href="{{ route('view.product.new7', $product->slug) }}">Shop Now</a></div>
                    @else
                        <div class="button banner_button"><a href="#">Shop Now</a></div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

@endforeach
@endif