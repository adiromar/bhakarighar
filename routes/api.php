<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('login', 'ApiAuth\LoginController@login');
Route::post('users/register', 'ApiController@register');
Route::get('users/checkDuplicateEmail', 'ApiController@checkDuplicateEmail');
Route::get('users/checkUserName', 'ApiController@checkUserName');

Route::get('getAllUsers', 'ApiController@getAllUsers');

Route::get('category', 'ApiController@getAllCategories');
Route::get('category/featured', 'ApiController@getFeaturedCategories');
Route::get('category/parent/{parentId}', 'ApiController@getCategoryByParentId');
Route::get('category/offered', 'ApiController@getCategoryOffered');

Route::get('products/sales', 'ApiController@getSalesProduct');
Route::get('products/featured', 'ApiController@getFeaturedProducts');
Route::get('products/category/{categoryId}', 'ApiController@getProductsByCategoryId');
Route::get('products/mostbought', 'ApiController@getMostBought');
Route::get('products/{productId}', 'ApiController@getProductById');
Route::get('products/parentCategory/{categoryId}', 'ApiController@getProductsByParentCategoryId');


// Route::get('products/mostBought', 'ApiController@getMostBought');

Route::get('review/reviewProduct/{productId}', 'ApiController@getReviewByProductId');
Route::get('review/{userId}/user', 'ApiController@getAllReviews');
Route::post('review/addProductReview', 'ApiController@insert_product_review')->middleware('custom_auth');

Route::get('slider', 'ApiController@getAllActiveSlider');

Route::get('wish-list/{userId}', 'ApiController@getWishProductListOfUser');
Route::get('wish-list/{userId}/{productId}', 'ApiController@getWishIdofProduct');
Route::post('wish-list', 'ApiController@wishlist_update');

Route::get('promotionalSales/active', 'ApiController@getPromotionalSales');
Route::get('promotionalSales/pr/{promotionalSalesId}', 'ApiController@getPromotionalSalesById');

Route::get('order/{orderId}', 'ApiController@getOrderDetails');
Route::get('order_new/{orderId}', 'ApiController@getOrderDetails_new');

Route::get('order/user/{userId}', 'ApiController@getAllOrders');
Route::post('order/confirm', 'ApiController@makeOrder');
Route::post('order/cancel/{orderId}', 'ApiController@cancel_order');
Route::get('order/getcancelled/{userId}', 'ApiController@getAllCancelledOrders');

Route::get('get/order/extraDetails/{orderId}', 'ApiController@getextraDetails');
Route::get('get/allOrders', 'ApiController@getAllOrdersAdmin');
Route::get('get/allCancelledOrders', 'ApiController@getAllCancelledOrdersAdmin');

Route::post('storeProduct', 'ApiController@storeProduct');

// Route::post('order/verifyKhaltiPayment', 'ApiController@verifyKhaltiPayment');
Route::post('order/verifyKhaltiPayment', 'ApiController@transaction');
