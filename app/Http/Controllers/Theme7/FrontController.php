<?php

namespace App\Http\Controllers\Theme7;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Product;
use App\Setting;
use App\Category;
use App\Tags;
use Auth;
use App\User;

use Session;

class FrontController extends Controller
{
	
	public function index() {
        $title = 'Bakharighar ';
        $products = Product::where('featured', 0)
            ->orderBy('products.id','desc')->take(20)->get();

        $featured_products = Product::where('products.featured',1)
            ->orderBy('products.updated_at','desc')->take(12)->get();

        $setting = Setting::first();
        $previewEdit = 0;
        $categories = Category::orderBy('name')->get();
        $tags = Tags::orderBy('name')->get();

        $get_all_parent = Category::select('parentId')->where('parentId', '>', '0')->get()->pluck('parentId', 'parentId')->toArray();
        $list_ids = $get_all_parent;
        $parentCategory = Category::whereIn('id', $list_ids)->orderBy('name', 'asc')->get();
        
        return view('theme7.index', compact('title', 'previewEdit', 'categories','featured_products','products','tags','parentCategory'));
        
  }
  
  public function previewEdit() {
    $title = 'Bakharighar';
		$products = Product::where('featured', 0)
                          ->orderBy('products.id','desc')->take(20)->get();

        $featured_products = Product::where('products.featured',1)
                          ->orderBy('products.updated_at','desc')->take(12)->get();
        $previewEdit = 1;
        $categories = Category::orderBy('name')->get();
        $tags = Tags::orderBy('name')->get();
        
        if(Auth::user()->roles()->first()->role == 'Supplier' || Auth::user()->roles()->first()->role == 'Admin'){
            $previewEdit = 0;
            return view('theme7.index', compact('title', 'previewEdit', 'categories','featured_products','products','tags'));
            
        }
		if( Auth::user()) {
        return view('theme7.previewEdit', compact('title', 'previewEdit', 'categories','featured_products', 'products','tags'));
        }else{
            $previewEdit = 0;
            return view('theme7.index', compact('title', 'previewEdit', 'categories','featured_products','products','tags'));
        }
    }

    public function get_products_by_category_new($slug){

        $id_get = Category::where('slug', $slug)->first();
        if( !$id_get ){
            return redirect()->route('index');
        }
        $id = $id_get->id;

        if (request()->sort == 'low_high') {
            $products = Category::find($id)->products()->orderBy('rate')->paginate(10);
        }elseif(request()->sort == 'high_low'){
            $products = Category::find($id)->products()->orderBy('rate', 'desc')->paginate(10);
        }elseif(request()->rating == 'low_high'){
            $products = Category::find($id)->products()
                ->with(['ratings' => function ($query){
                            $query->orderBy('rating');
                        }])->paginate(10);
        }elseif(request()->rating == 'high_low'){
            $products = Category::find($id)->products()
                ->with(['ratings' => function ($query){
                            $query->orderBy('rating', 'desc');
                        }])->paginate(10);
        }
        else{
            $products = Category::find($id)->products()->orderBy('productName')->paginate(10);
        }
        $catname = Category::find($id);
        $title = 'Category: ' . $catname->name;
        return view('theme7.products')->with([
                                                'products' => $products,
                                                'categories' => Category::all(),
                                                'catname' => $catname,
                                                'title' => $title
                                            ]);

    }

    public function view_product_new( $slug ) {

        $product = Product::where('slug', $slug)->firstOrFail();
        if (empty($product)) {
            return redirect()->route('index');
        }
        $cat_id = $product->categoryId;
        $category = Category::find($cat_id);
        $ratings = $product->ratings()->select('rating')->get();
        $averageRating = collect($ratings)->avg('rating');

        $productsOfCategory = '';
        $productReviews = '';
        $productsOfCategory = Product::latest()->where('categoryId', $cat_id)->where('id', '!=', $product->id)->get()->take(4);
        $productReviews = $product->reviews()->orderBy('created_at')->get();

        $get_all_parent = Category::select('parentId')->where('parentId', '>', '0')->get()->pluck('parentId', 'parentId')->toArray();
        $list_ids = $get_all_parent;
        $parentCategory = Category::whereIn('id', $list_ids)->orderBy('name', 'asc')->get();

        return view('theme7.single')->with([
                                                'product'=> $product,
                                                'productsOfCategory' => $productsOfCategory,
                                                'productReviews' => $productReviews,
                                                'averageRating' => $averageRating,
                                                'category' => $category,
                                                'parentCategory' => $parentCategory
                                                ]);
    }

    public function login_new() {
        $previewEdit = 0;
        return view('theme7.login')->with('previewEdit', $previewEdit);
    }
    public function cart_view() {
        return view('theme7.cart');
    }

    public function contact() {
		return view('theme7.contact');
	}

	public function privacy_policy() {
		return view('theme7.privacypolicy');
    }
    
    public function checkout_view() {
        return view('theme7.checkout');
    }

    public function wishlist($userId)
    {
        $user = User::find($userId);
        $wishlist = $user->wishlists()->where('deleted', 0)->get()->pluck('productId')->toArray();
        
        $products = Product::wherein('id', $wishlist)->paginate(9);

        $title = 'Your Wish List';
        return view('theme7.products', compact('user', 'products', 'title'));
    }

    public function search_product(Request $request) {

        $this->validateWith([
            'search' => 'required',
        ]);

        $products = Product::where('productName', 'like', '%'.$request->search.'%')->paginate(9);

        $title = 'Search results for "' . $request->search . '"';
        return view('theme7.search', compact('products', 'title'));

    }

    public function ajax_update_front(Request $request) {
        echo "hello";
        $productid = $request->product_id;

        if($productid){
            $message = 'Removed from your Wish List.';

            return response()->json(['message' => 'Message True', 'status' => 200]);
        }else{

            return response()->json(['message' => 'Error', 'status' => 201]);
        }

    }

	


}