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
                    <div class="footer_title">Categories</div>
                    <ul class="footer_list">

                        @foreach( App\Category::get()->take(7) as $category)
                        <li><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }}</a></li>
                        

                        @endforeach
                    </ul>
                    {{-- <div class="footer_subtitle">Gadgets</div>
                    <ul class="footer_list">
                        <li><a href="#">Car Electronics</a></li>
                    </ul> --}}
                </div>
            </div>

            <div class="col-lg-2">
                <div class="footer_column">
                    <ul class="footer_list footer_list_2">
                        @foreach( App\Category::skip(7)->take(7)->get() as $category)
                        <li><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }}</a></li>
                        

                        @endforeach
                    </ul>
                </div>
            </div>

            <div class="col-lg-2">
                <div class="footer_column">
                    <div class="footer_title">Customer Care</div>
                    <ul class="footer_list">
                        <li><a href="{{ route('login.new7') }}">Register</a></li>
                        @auth
                        <li><a href="{{ route('wish7', Auth::id()) }}">Wish List</a></li>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved |  <a href="http://encoderslab.com" target="_blank">Encoderslab</a>
</div>
                    <div class="logos ml-sm-auto">
                        <ul class="logos_list">
                            <li><a href="#"><img src="images/logos_1.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_2.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_3.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_4.png" alt=""></a></li>
                        </ul>
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

{{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> --}}

<script src="{{ asset('themes/7/plugins/greensock/TweenMax.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/TimelineMax.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/scrollmagic/ScrollMagic.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/animation.gsap.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/greensock/ScrollToPlugin.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/OwlCarousel2-2.2.1/owl.carousel.js') }}"></script>
<script src="{{ asset('themes/7/plugins/slick-1.8.0/slick.js') }}"></script>
<script src="{{ asset('themes/7/plugins/easing/easing.js') }}"></script>

{{-- <script src="{{ asset('themes/7/plugins/Isotope/isotope.pkgd.min.js') }}"></script>
<script src="{{ asset('themes/7/plugins/jquery-ui-1.12.1.custom/jquery-ui.js') }}"></script>
<script src="{{ asset('themes/7/plugins/parallax-js-master/parallax.min.js') }}"></script> --}}

<script src="{{ asset('themes/7/js/custom.js') }}"></script>
{{-- <script src="{{ asset('themes/7/js/shop_custom.js') }}"></script> --}}

</body>

</html>