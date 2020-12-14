<style>
    .popup_form textarea,input[type="text"],input[type="file"],input[type="number"]{
        color: black !important;
        background: #dfdfda !important;
    }
    .popup_form label{
        color: black !important;
        font-weight: 700;
    }
    .popup_form select{
        background: #dfdfda !important;
        color: black !important;
    }
    .popup_form input:disabled {
        cursor: not-allowed;
        opacity: .6;
        background: red;
    }
</style>	

<!-- Insert Insert Modal -->
<div class="modal fade" id="featured_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Add Items in this Section</h5>
          <p style="color: red;">* Only Supplier with assigned themes can edit this section.</p>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
            <div class="rows">
                
                <form action="{{ route('products.store') }}" method="post" class="front-end-form popup_form" enctype="multipart/form-data">
                    {{csrf_field()}}

                    <div class="form-group">
                        <label>Product Name*:</label>
                        <input type="text" name="productName" value="{{ old('productName') }}" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Select Category*:</label>
                                <select name="category" class="form-control" required>
                                    @if( count($categories) )
                                    
                                    @foreach ( $categories as $category )
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach

                                    @else
                                        <option value="">-- Select --</option>
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>Unit Type*:</label>
                                <select name="unit" class="form-control" required>
                                    <option value="pcs">Pieces</option>
                                    <option value="package">Package</option>
                                    <option value="set">Set</option>
                                    <option value="dozen">Dozen</option>
                                </select>
                            </div>
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Featured Image*: <small><b>Min Image Size: 320 * 300</b></small></label>
                                <input type="file" name="featuredImage" class="form-control" id="featured_file" required>
                                <p class="featured-error" style="color:red;"></p>
                            </div>
                            <div class="col-md-6">
                                <label>Choose Images:</label>
                                <input multiple type="file" class="form-control" name="images[]">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <label for="">Keywords (Highlights):</label><br>
                                <small style="color:red">Add keywords separated by comma.</small>
                                <input type="text" name="keywords" class="form-control" placeholder="keyword1, keyword2, ..." value="{{ old('keywords') }}">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-5">
                                <label>Quantity (optional):</label>
                                <input type="number" name="quantity" value="{{ old('quantity') }}" class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label>Featured?</label>
                                <select name="featured" class="form-control">
                                    <option value="0">No</option>
                                    <option value="1" selected>Yes</option>
                                </select>
                            </div>

                            {{-- Edited for adding theme wise data --}}
                            <div class="col-md-4 chk-box">
                            
                            <input type="hidden" name="theme_no[]" value="7">
                            
                            </div>



                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Rate*:</label>
                                <input type="text" name="actualRate" value="{{ old('actualRate') }}" class="form-control">
                            </div>
                            <div class="col-md-4">
                                <label>Discount (% or Rs.)</label>
                                <input type="text" name="discount" value="{{ old('discount') }}" class="form-control">
                            </div>
                            <div class="col-md-4">
                                <label>Selling Price (Rate)*:</label>
                                <input type="text" name="sellingPrice" value="{{ old('sellingPrice') }}" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="">Tags (optional):</label>
                        <select class="js-example-basic-multiple form-control" name="tags[]" multiple="multiple">
                        @if( count($tags) )

                        @foreach( $tags as $tag )
                            <option value="{{ $tag->id }}">{{ $tag->name }}</option>
                        @endforeach

                        @else
                          <option value="">No Tags</option>
                        @endif
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Short Description*:</label>    
                        <textarea name="shortDesc" rows="3" class="form-control">{{ old('shortDesc') }}</textarea>
                    </div>

                    <div class="form-group">
                        <label>More Details ( थप / लामो विवरण ):</label>
                        <textarea name="description" class="form-control" cols="30" rows="10">{!! old('description') !!}</textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-lg" name="submit_product" value="Add Product">
                    </div>

                </form>
            </div>
		</div>
		{{-- <div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="button" class="btn btn-primary">Save changes</button>
		</div> --}}
	  </div>
	</div>
  </div>


  <!-- Products Insert Modal -->
<div class="modal fade" id="product_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Add Items in this Section</h5>
          <p style="color: red;">* Only Supplier with assigned themes can edit this section.</p>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
            <div class="rows">
                
                <form action="{{ route('products.store') }}" method="post" enctype="multipart/form-data" class="front-end-form popup_form">
                    {{csrf_field()}}

                    <div class="form-group">
                        <label>Product Name*:</label>
                        <input type="text" name="productName" value="{{ old('productName') }}" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Select Category*:</label>
                                <select name="category" class="form-control" required>
                                    @if( count($categories) )
                                    
                                    @foreach ( $categories as $category )
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach

                                    @else
                                        <option value="">-- Select --</option>
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label>Unit Type*:</label>
                                <select name="unit" class="form-control" required>
                                    <option value="pcs">Pieces</option>
                                    <option value="package">Package</option>
                                    <option value="set">Set</option>
                                    <option value="dozen">Dozen</option>
                                </select>
                            </div>
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Featured Image*: <small><b>Min Image Size: 320 * 300</b></small></label>
                                <input type="file" name="featuredImage" class="form-control" id="product_file" required>
                                <p class="product-error" style="color:red;"></p>
                            </div>

                            <div class="col-md-6">
                                <label>Choose Images:</label>
                                <input multiple type="file" class="form-control" name="images[]">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <label for="">Keywords (Highlights):</label><br>
                                <small style="color:red">Add keywords separated by comma.</small>
                                <input type="text" name="keywords" class="form-control" placeholder="keyword1, keyword2, ..." value="{{ old('keywords') }}">
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-5">
                                <label>Quantity :</label>
                                <input type="number" name="quantity" value="{{ old('quantity') }}" class="form-control" required>
                            </div>
                            <div class="col-md-3">
                                <label>Featured?</label>
                                <select name="featured" class="form-control">
                                    <option value="0" selected>No</option>
                                    <option value="1">Yes</option>
                                </select>
                            </div>

                            {{-- Edited for adding theme wise data --}}
                            <div class="col-md-4 chk-box">
                                
                            <input type="hidden" name="theme_no[]" value="7">
                            
                            </div>



                        </div>
                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Rate*:</label>
                                <input type="text" name="actualRate" value="{{ old('actualRate') }}" class="form-control" required>
                            </div>
                            <div class="col-md-4">
                                <label>Discount (% or Rs.)</label>
                                <input type="text" name="discount" value="{{ old('discount') }}" class="form-control">
                            </div>
                            <div class="col-md-4">
                                <label>Selling Price (Rate)*:</label>
                                <input type="text" name="sellingPrice" value="{{ old('sellingPrice') }}" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="">Tags (optional):</label>
                        <select class="js-example-basic-multiple form-control" name="tags[]" multiple="multiple">
                        @if( count($tags) )

                        @foreach( $tags as $tag )
                            <option value="{{ $tag->id }}">{{ $tag->name }}</option>
                        @endforeach

                        @else
                          <option value="">No Tags</option>
                        @endif
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Short Description*:</label>    
                        <textarea name="shortDesc" rows="3" class="form-control" required>{{ old('shortDesc') }}</textarea>
                    </div>

                    <div class="form-group">
                        <label>More Details ( थप / लामो विवरण ):</label>
                        <textarea name="description" class="form-control" cols="30" rows="10">{!! old('description') !!}</textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-lg" name="submit_product" value="Add Product">
                    </div>

                </form>
            </div>
		</div>
		{{-- <div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="button" class="btn btn-primary">Save changes</button>
		</div> --}}
	  </div>
	</div>
  </div>

  <!-- Update feat Modal -->
<div class="modal fade" id="update_feat_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Update Featured Product</h5>
          {{-- <p style="color: red;">* Only Supplier with assigned themes can edit this section.</p> --}}
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
            <div class="rows">
                <div class="resp">
                    as
                </div>
                
            </div>
		</div>
		{{-- <div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="button" class="btn btn-primary">Save changes</button>
		</div> --}}
	  </div>
	</div>
  </div>



  <!-- Insert Insert Modal -->
<div class="modal fade" id="slider_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Add Slider Items in this Section</h5>
          <p style="color: red;">* Only Supplier with assigned themes can edit this section.</p>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
            <div class="rows">
                
                <form action="{{ route('sliders.store') }}" method="POST" enctype="multipart/form-data" class="popup_form">
                    {{ csrf_field() }}

                    <div class="form-group">
                        <label>Main Text</label>
                        <textarea name="textMain" rows="3" class="form-control">{{ old('textMain') }}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Secondary Text</label>
                        <input type="text" name="textSecondary" class="form-control" value="{{ old('textSecondary') }}">
                    </div>
                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Slider Image: <small><b>( Min Size: 520 * 460 px )</b></small></label>
                                <input type="file" name="sliderImage" id="file_slider" class="form-control">
                                <p class="slider-error" style="color:red;"></p>
                            
                            </div>
                            <div class="col-md-6">
                                <label>Select Category</label>
                                <select name="category" class="form-control">
                                @foreach ( $categories as $category )
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                   

                    <div class="form-group">
                        @if(Auth::user()->hasRoles('supplier'))
                        <input type="hidden" name="slider_theme" value="7">
                        @endif
                        <input type="submit" name="submit" value="Create Slider" class="btn btn-info">    
                    </div>

                </form>
            </div>
		</div>
		{{-- <div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="button" class="btn btn-primary">Save changes</button>
		</div> --}}
	  </div>
	</div>
  </div>