@extends('theme7.layouts.main')

@section('head')
    @include('theme7.layouts.head_single')
    <style>
        .image_list li {
            width: 120px;
            height: 120px;
        }
        .tab-content .tab-pane {
            margin-top: 1rem;
            padding-left: 1rem;
        }
    </style>
@endsection


@section('content')

<div class="single_product">
    <div class="container">
        <div class="row">

            <!-- Images -->
            <div class="col-lg-2 order-lg-1 order-2">
                <ul class="image_list">
                    <li class="image_list_item" data-image="{{  asset('uploads/products/'.$product->featuredImage) }}"><img src="{{  asset('uploads/products/thumbnails/'.$product->featuredImage) }}" alt=""></li>
                   
                    @foreach( $product->images as $img )
                    <li class="image_list_item" data-image="{{  asset('uploads/products/'.$img->image) }}"><img src="{{  asset('uploads/products/thumbnails/'.$img->image) }}" alt=""></li>
                    @endforeach
                </ul>
            </div>

            <!-- Selected Image -->
            <div class="col-lg-5 order-lg-2 order-1">
                <div class="image_selected"><img src="{{  asset('uploads/products/'.$product->featuredImage) }}" alt=""></div>
            </div>

            <!-- Description -->
            <div class="col-lg-5 order-3">
                <div class="product_description">
                    <div class="product_category">{{ $product->categoryName }}</div>
                    <div class="product_name">{{ $product->productName }}</div>
                    <p>{{ $product->reviews()->count() }} Review(s)</p>
                    <style>
                        .yellow{ color: orange }
                    </style>
                    <div class="rating-stars">
                        @if( $averageRating > 0 )
                        <i class="{{ $averageRating >= 1 ? 'yellow' : '' }} fa fa-star"></i>
                        <i class="{{ $averageRating >= 2 ? 'yellow' : '' }} fa fa-star"></i>
                        <i class="{{ $averageRating >= 3 ? 'yellow' : '' }} fa fa-star"></i>
                        <i class="{{ $averageRating >= 4 ? 'yellow' : '' }} fa fa-star"></i>
                        <i class="{{ $averageRating >= 5 ? 'yellow' : '' }} fa fa-star"></i>
                        @endif
                    </div>
                    <div class="product_text"><p>{{ $product->shortDesc }}</p></div>
                    <div class="order_info d-flex flex-row">
                        <form action="#">
                            <div class="clearfix" style="z-index: 1000;">

                                <!-- Product Quantity -->
                                <div class="product_quantity clearfix">
                                    <span>Quantity: </span>
                                    <input id="quantity_input" type="text" pattern="[0-9]*" value="1">
                                    <div class="quantity_buttons">
                                        <div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
                                        <div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
                                    </div>
                                </div>

                                <!-- Product Color -->
                                <ul class="product_color">
                                    <li>
                                        <span>Color: </span>
                                        <div class="color_mark_container"><div id="selected_color" class="color_mark"></div></div>
                                        <div class="color_dropdown_button"><i class="fas fa-chevron-down"></i></div>

                                        <ul class="color_list">
                                            <li><div class="color_mark" style="background: #999999;"></div></li>
                                            <li><div class="color_mark" style="background: #b19c83;"></div></li>
                                            <li><div class="color_mark" style="background: #000000;"></div></li>
                                        </ul>
                                    </li>
                                </ul>

                            </div>

                        <div class="product_price">Rs. {{ $product->rate }}</div>
                            <div class="button_container">
                                <button type="button" class="button cart_button add-to-cart-single-page" data-productid="{{ $product->id }}" data-product="{{ $product->productName }}" data-rate="{{ $product->rate }}">Add to Cart</button>
                                <div class="product_fav add-to-wishlist" data-product="{{ $product->id }}"><i class="fas fa-heart " ></i></div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-md-12" style="padding: 1rem 4rem;">
                <ul class="nav nav-tabs" id="myTab" role="tablist" style="margin-top: 2rem;">
@if( $product->description )
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Additional Information</a>
  </li>
@endif
  <li class="nav-item">
    <a class="nav-link {{ $product->description ? '' : 'active' }}" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Reviews ({{$product->reviews()->count()}})</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
    @if( $product->description )
      <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
        {!! $product->description !!}
      </div>
    @endif
  <div class="tab-pane fade {{ $product->description ? '' : 'show active' }}" id="profile" role="tabpanel" aria-labelledby="profile-tab">
    <div id="reviews">
                    <div id="comments">
                    @if( $product->reviews()->count() > 0 )

                    @foreach($product->reviews()->latest()->get()->take(3) as $review)
                        <div class="reviews-wrap" style="border:1px solid #ccc;padding:15px;margin-bottom: 10px;">
                            <p><b>{!! $review->reviewTitle !!}</b></p>
                            <ul>
                                <li><a href=""><i class="fa fa-user"></i>&nbsp;{{ $review->user->username }}</a></li>
                                <li><a href=""><i class="fa fa-calendar-o"></i>&nbsp;{{ date('Y-m-d', strtotime($review->created_at)) }}</a></li>
                            </ul>
                            
                            <p>{!! $review->reviewDesc !!}</p>
                            
                        </div>
                    @endforeach

                    @else

                    <p class="woocommerce-noreviews" style="font-size: 19px;margin-left: 1rem;margin-top: 1rem;">There are no reviews yet.</p>

                    @endif
                    </div>

                    @auth
                        <div class="col-md-12">
                            <br />
                            <h3><b>Write Your Review</b></h3>
                            <form action="{{ route('product.review') }}" method="post" class="pl-2">
                                {{csrf_field()}}
                                
                                <div class="aa-your-rating">
                                    <div class="form-group" id="rating" style="display: inline-flex;">
                                        <small>Rate this product&nbsp;&nbsp;</small>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="name">Review Title</label>
                                    <input type="text" class="form-control" name="reviewTitle" id="name" placeholder="Name">
                                </div>
                            
                                <div class="form-group">
                                    <label for="">Your Review</label>
                                    <textarea class="form-control" name="reviewDesc" rows="3" id="message"></textarea>
                                </div>
                                <input type="hidden" name="user_id" value="{{Auth::id()}}">
                                <input type="hidden" name="product_id" value="{{$product->id}}">
                                <input type="hidden" name="email" value="{{Auth::user()->email}}">
                                <button type="submit" class="btn btn-info pull-right">
                                    Submit
                                </button>
                            </form>
                        </div>
                    @else
                    <div id="review_form_wrapper">
                        <div id="review_form">
                            <div id="respond" class="comment-respond">
                                @if( $product->reviews()->count() == 0 )
                                <h3 id="reply-title" class="comment-reply-title">Be the first to review “{{ $product->productName }}”</h3>
                                @endif
                                <p class="must-log-in">You must be <a href="{{ route('login.new7') }}">logged in</a> to post a review.</p>  
                            </div><!-- #respond -->
                        </div>
                    </div>
                    @endauth

                    


                    <div class="clear"></div>
                </div>
  </div>
</div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('recentlyviewed')
    @include('theme7.layouts.recently_views')   
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
                    <?php $settings = DB::table('site_settings')->first(); ?>
                    <?php $contacts = json_decode($settings->contacts); ?>
                    @if( $settings->contacts && count($contacts) > 0 )
                    @foreach( $contacts as $contact )
                    <div class="footer_phone">
                        
                        {{ isset($contact->contactNo) ? $contact->contactNo : "" }}
                        
                    </div>
                    
                    <div class="footer_contact_text">
                        <p>{{ isset($contact->location) ? $contact->location : '' }}</p>
                        
                    </div>
                    @endforeach
                    @endif
                    <?php $sociallinks = json_decode($settings->socialLinks); ?>
                    <div class="footer_social">
                        <ul>
                        @if( isset($sociallinks->facebook) )
                            <li><a href="{{ $sociallinks->facebook }}" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                        @endif
                        @if( isset($sociallinks->twitter) )
                            <li><a href="{{ $sociallinks->twitter }}" target="_blank"><i class="fab fa-twitter"></i></a></li>
                        @endif
                        @if( isset($sociallinks->youtube) )
                            <li><a href="{{ $sociallinks->youtube }}" target="_blank"><i class="fab fa-youtube"></i></a></li>
                        @endif
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-2 offset-lg-2">
                <div class="footer_column">
                    <div class="footer_title">Find it Fast</div>
                    <ul class="footer_list">
                    <?php $categories = App\Category::where('parentId', 0)->orderBy('name')->get()->take(7); ?>
                        @foreach($categories as $category)
                        <li><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }} ({{$category->products()->count()}})</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>

            <div class="col-lg-2">
                
            </div>

            <div class="col-lg-2">
                <div class="footer_column">
                    <div class="footer_title">Customer Care</div>
                    <ul class="footer_list">
                        @auth
                        <li><a href="{{ url('/admin') }}">Account</a></li>
                        <li><a href="{{ url('wish-list/' . Auth::id()) }}">Wish List</a></li>
                        @endauth
                        <li><a href="{{ url('/privacy-policy') }}">Privacy Policy</a></li>
                        
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

                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <a href="https://encoderslab.com" target="_blank">Encoderslab.com</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script src="{{ asset('themes/7/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('themes/7/styles/bootstrap4/popper.js') }}"></script>
<script src="{{ asset('themes/7/styles/bootstrap4/bootstrap.min.js') }}"></script>
{{-- <script src="{{ asset('themes/7/plugins/greensock/TweenMax.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/TimelineMax.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/scrollmagic/ScrollMagic.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/animation.gsap.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/ScrollToPlugin.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script> --}}
{{-- <script src="{{ asset('themes/7/plugins/slick-1.8.0/slick.js') }}"></script> --}}
<script src="{{ asset('themes/7/plugins/easing/easing.js') }}"></script>
<script src="{{ asset('themes/7/js/product_custom.js') }}"></script>

{{-- pop up --}}
<script src="{{ asset('js/jquery.emojiRatings.min.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script>
		$(document).ready(function(){
	        $("#rating").emojiRating({
                fontSize: 20,
                onUpdate: function(count) {
                    $(".review-text").show();
                    $("#starCount").html(count + " Star");
                    var rating = $('.emoji-rating').val();
                    $('#rating-input').val(rating);
                }
            });

	        // Add to Cart 
			$('.add-to-cart-single-page').click(function(e){
				e.preventDefault();
				
				let productId = $(this).data('productid');
				let productName = $(this).data('product');
				let rate = $(this).data('rate');
                let val = $('#quantity_input').val();
                // console.log(val);
                // alert('Adding ' + val + ' item(s)');
				$.ajaxSetup({
				  headers: {
				    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				  }
				});

				$.ajax({
	               type:'POST',
	               url:'{{ url("cart/ajax") }}',
	               data: { productId, productName, rate, val },
	               success:function(data) {
	               		if ( data.status == 200 ) {
	               			
	               			let count = $('.total-count').text();
	               			let cartcount = parseInt(count) + 1;
	               			$('.total-count').text(cartcount);
	               			$('.cart-count').text(cartcount + ' Item(s)');

	               			Swal.fire({
							  title: 'Success!',
							  text: 'Item(s) added to your cart.',
							  icon: 'success',
							  confirmButtonText: 'Ok'
							})

	               		}else{
							console.log('something is wrong');
	               			Swal.fire({
							  text: 'Item already on your cart.',
							  icon: 'error',
							  confirmButtonText: 'Exit'
							})
	               		}
	               }
	            });

			});

			// Add to Wish List
			$('.add-to-wishlist').click(function(e){
				e.preventDefault();

				let productId = $(this).data('product');

				$.ajaxSetup({
				  headers: {
				    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				  }
				});

				$.ajax({
					type:'POST',
					url:'{{ url("wishlist/ajax") }}',
					data: { productId },
					success:function(data) {
						
						if ( data.status == 200 ) {
	               			
	               			Swal.fire({
							  title: 'Success!',
							  text: data.message,
							  icon: 'success',
							  confirmButtonText: 'Ok'
							})

	               		}else{
	               			
	               			Swal.fire({
							  text: 'Please login to add this item in the wish list.',
							  icon: 'error',
							  confirmButtonText: 'Exit'
							})
	               		}

					}
	            });

			});

			// Sort Product
			$('.sort-product').change(function(){

				window.location = `?sort=` + $(this).val();

			});

            // 
            $('.image_list_item').click(function(){
                let src = $(this).data('image');
                $('.image_selected').html(`<img src="${src}" alt="product-image">`);
            });

		});
    </script>
    
</body>
</html>

@endsection