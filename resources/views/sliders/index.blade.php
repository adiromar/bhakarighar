@extends('layouts.app')
@section('content')
<div class="container" style="padding: 25px 15px">
    <h4>Admin Panel</h4>
    <div class="row">
        <div class="col-md-3">
            @if(Auth::user()->hasRoles('admin')){
                @include('admin.sidebar')
                @php
                    $user_theme = 0;
                @endphp
            @else
                @include('partials.adminsidebar')
                @php
                    $user_theme = Auth::user()->assign_theme;
                @endphp
            @endif
        </div>
        <div class="col-md-9">
            <div class="card">
              <div class="card-body">
                <div class="card-header">
                    <strong>Manage Sliders for APP:</strong>
                    <a href="{{ route('sliders.create') }}" class="btn btn-info btn-sm">Add New <i class="fa fa-plus"></i></a>
                </div>
                <hr>
                <div class="card-text">
                    <div class="row">
                        <div class="col-md-12">
                            <table id="example" class="table table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>Main Text</th>
                                        <th>Secondary Text</th>
                                        <th>Image</th>
                                        <th>Category</th>
                                        <th>Show</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @foreach( $sliders as $slider )

                                    <tr>
                                        <td>{{ $slider->textMain }}</td>
                                        <td>{{ $slider->textSecondary }}</td>
                                        <td>
                                            <img src="{{ asset( 'uploads/sliders/resized/'.$slider->sliderImage ) }}" width="80" height="50" alt="">
                                        </td>
                                        <td>{{ $slider->categoryName }}</td>
                                        <td>{!! $slider->showSlider ? '<i class="fa fa-check"></i>' : '<strong>x</strong>' !!}</td>
                                        <td>
                                            <a href="{{ route('sliders.edit', $slider->sliderId) }}" class="btn btn-danger btn-sm">Edit</a>
                                        </td>
                                    </tr>

                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
              </div>
        </div>
        </div>
    </div>
</div>
@endsection
