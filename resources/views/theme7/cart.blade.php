@extends('theme7.layouts.main')

@section('menu')

	@include('theme7.layouts.head')

	<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('themes/7/styles/cart_responsive.css') }}">

@endsection


<style>
.shopping-summery tbody tr img{
    border-radius: 0;
    width: 80px;
    height: 80px;
}
.shopping-summery tbody .product-name a {
    font-weight: 600;
    color: #282828;
    font-weight: 600;
    font-size: 17px;
}
.order_total{
    height: unset !important;
}
.shop-cart-right ul li {
    font-size: 15px;
    font-weight: 400;
    color: #333;
    margin-bottom: 12px;
}
.order_total_amount{
    line-height: 30px !important;
}
.cart_button_clear a{
    color: #0e8ce4 !important;
}
</style>
    


@section('content')



<div class="cart_section">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="cart_container">
                    <div class="cart_title">Shopping Cart</div>
                    <div class="cart_items">
                        {{-- <ul class="cart_list">
                            <li class="cart_item clearfix">
                                <div class="cart_item_image"><img src="images/shopping_cart.jpg" alt=""></div>
                                <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                    <div class="cart_item_name cart_info_col">
                                        <div class="cart_item_title">Name</div>
                                        <div class="cart_item_text">MacBook Air 13</div>
                                    </div>
                                    <div class="cart_item_color cart_info_col">
                                        <div class="cart_item_title">Color</div>
                                        <div class="cart_item_text"><span style="background-color:#999999;"></span>Silver</div>
                                    </div>
                                    <div class="cart_item_quantity cart_info_col">
                                        <div class="cart_item_title">Quantity</div>
                                        <div class="cart_item_text">1</div>
                                    </div>
                                    <div class="cart_item_price cart_info_col">
                                        <div class="cart_item_title">Price</div>
                                        <div class="cart_item_text">$2000</div>
                                    </div>
                                    <div class="cart_item_total cart_info_col">
                                        <div class="cart_item_title">Total</div>
                                        <div class="cart_item_text">$2000</div>
                                    </div>
                                </div>
                            </li>
                        </ul> --}}

                        <table class="table shopping-summery">
                            <thead>
                                <tr class="main-hading">
                                    <th>PRODUCT</th>
                                    <th>NAME</th>
                                    <th>RATE</th>
                                    <th class="">QUANTITY</th>
                                    <th class="">TOTAL</th> 
                                    <th class="">#</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach (Cart::content() as $item)
                                <tr>
                                    <td class="image" data-title="PRODUCT"><img src="{{asset('uploads/products/thumbnails/'.$item->model->featuredImage)}}" alt="#"></td>
                                    <td class="product-des" data-title="Description">
                                        <p class="product-name"><a href="{{ route('view.product.new7', $item->model->slug) }}">{{ $item->model->productName }}</a></p>
                                        <p class="product-des">{{ $item->model->categoryName }}</p>
                                    </td>
                                    <td>
                                        {{ $item->model->rate }}/-
                                    </td>
                                    <td>
                                        <form action="{{ route('cart.update', $item->rowId) }}" method="post" class="submit-form">
                                            {{csrf_field()}}
                                            {{ method_field('PUT') }}
                                            <select name="item_count" class="form-control" style="">
                                                <?php for ($i=1; $i <= 10; $i++) { ?>
                                                    <option value="{{$i}}" {{ $item->qty == $i ? 'selected' : '' }}>{{$i}}</option>
                                                <?php } ?>
                                            </select>
                                            <noscript><input type="submit" name="submit"></noscript>
                                        </form>
                                    </td>
                                    <td class="total-amount" data-title="Total"><span>NRs.</span>{{ $item->model->rate * $item->qty }}</span></td>
                                    <td class="action" data-title="Remove"><a href="#" onclick="event.preventDefault();document.getElementById('remove-item-{{$item->rowId}}').submit();"><i class="ti-trash fa fa-times remove-icon"></i></a>
                                        <form id="remove-item-{{$item->rowId}}" action="{{ route('cart.destroy', $item->rowId) }}" method="post">
                                        {{csrf_field()}}
                                        {{ method_field('delete') }}
                                    </form></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    
                    <!-- Order Total -->
                    <div class="order_total">
                        <div class="order_total_content text-md-right">
                            {{-- <div class="order_total_title">Order Total:</div> --}}
                            <div class="order_total_amount shop-cart-right">
                                <ul>
                                <li>Cart Subtotal : <span>{{Cart::subtotal()}}</span></li>
                                <li>Shipping : <span>Free</span></li>
                                <li>You Save : <span>50/-</span></li>
                                <li class="last">You Pay : <span>NRs. {{Cart::subtotal()}}/-</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="cart_buttons">
                        <button type="button" class="button cart_button_clear"><a href="{{ url('/') }}">Continue Shopping</a></button>
                        <button type="button" class="button cart_button_checkout"><a href="{{ route('checkout.view7') }}">CHECKOUT</a></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!--/ End Contact -->

{{-- @include('theme2.layouts.newsletter') --}}

<script src="{{ asset('themes/7/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('themes/7/js/cart_custom.js') }}"></script>

@endsection
