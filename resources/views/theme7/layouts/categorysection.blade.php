<div class="cat_menu_container">
    <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
        <div class="cat_burger"><span></span><span></span><span></span></div>
        <div class="cat_menu_text">categories</div>
    </div>

    <ul class="cat_menu">
        {{-- <li><a href="#">Computers & Laptops <i class="fas fa-chevron-right ml-auto"></i></a></li> --}}
        {{-- <li class="hassubs">
            <a href="#">Hardware<i class="fas fa-chevron-right"></i></a>
            <ul>
                <li class="hassubs">
                    <a href="#">Menu Item<i class="fas fa-chevron-right"></i></a>
                    <ul>
                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </li>
                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
                <li><a href="#">Menu Item<i class="fas fa-chevron-right"></i></a></li>
            </ul>
        </li> --}}
        @foreach( App\Category::inRandomOrder()->get()->take(3) as $category)
    <li><a href="{{ route('category.product.new7', $category->slug) }}">{{ $category->name }}<i class="fas fa-chevron-right"></i></a></li>
        @endforeach
    </ul>
</div>