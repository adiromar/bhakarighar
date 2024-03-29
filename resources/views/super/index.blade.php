@extends('super.layouts.main')

@section('content')

<!-- Section: Stats -->
  <section class="section section-stats center">
    <div class="row">
      <div class="col s12 m6 l3">
        <div class="card-panel blue lighten-1 white-text center">
          <i class="material-icons medium">insert_emoticon</i>
          <h5>Monthly Visitors</h5>
          <h3 class="count">28300</h3>
          <div class="progress grey lighten-1">
            <div class="determinate white" style="width: 40%;"></div>
          </div>
        </div>
      </div>
      <div class="col s12 m6 l3">
        <div class="card-panel center">
          <i class="material-icons medium">mode_edit</i>
          <h5>Blog Posts</h5>
          <h3 class="count">105</h3>
          <div class="progress grey lighten-1">
            <div class="determinate blue lighten-1" style="width: 20%;"></div>
          </div>
        </div>
      </div>
      <div class="col s12 m6 l3">
        <div class="card-panel blue lighten-1 white-text center">
          <i class="material-icons medium">mode_comment</i>
          <h5>Comments</h5>
          <h3 class="count">1200</h3>
          <div class="progress grey lighten-1">
            <div class="determinate white" style="width: 40%;"></div>
          </div>
        </div>
      </div>
      <div class="col s12 m6 l3">
        <div class="card-panel center">
          <i class="material-icons medium">supervisor_account</i>
          <h5>Users</h5>
          <h3 class="count">350</h3>
          <div class="progress grey lighten-1">
            <div class="determinate blue lighten-1" style="width: 10%;"></div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- Section: Visitors -->
  <section class="section section-visitors blue lighten-4">
    <div class="row">
      <div class="col s12 m6 l8">
        <div class="card-panel">
          <div id="chartContainer" style="height: 300px; width: 100%;"></div>
        </div>
      </div>
      <div class="col s12 m6 l4">
        <!-- Latest Comments -->
        <ul class="collection with-header latest-comments">
          <li class="collection-header">
            <h5>Latest Comments</h5>
          </li>
          <li class="collection-item avatar">
            <img src="{{ asset('madmin/img/person1.jpg') }}" alt="" class="circle">
            <span class="title">John Doe</span>
            <p class="truncate">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt minima dolor error laboriosam autem ad beatae
              explicabo pariatur maxime fuga sed quod quo voluptas, adipisci illum aspernatur est, fugit tempore.</p>
            <a href="" class="approve green-text">Approve</a> |
            <a href="" class="deny red-text">Deny</a>
          </li>
          <li class="collection-item avatar">
            <img src="{{ asset('madmin/img/person2.jpg') }}" alt="" class="circle">
            <span class="title">Steve Smith</span>
            <p class="truncate">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt minima dolor error laboriosam autem ad beatae
              explicabo pariatur maxime fuga sed quod quo voluptas, adipisci illum aspernatur est, fugit tempore.</p>
            <a href="" class="approve green-text">Approve</a> |
            <a href="" class="deny red-text">Deny</a>
          </li>
          <li class="collection-item avatar">
            <img src="{{ asset('madmin/img/person3.jpg') }}" alt="" class="circle">
            <span class="title">Ellen Williams</span>
            <p class="truncate">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt minima dolor error laboriosam autem ad beatae
              explicabo pariatur maxime fuga sed quod quo voluptas, adipisci illum aspernatur est, fugit tempore.</p>
            <a href="" class="approve green-text">Approve</a> |
            <a href="" class="deny red-text">Deny</a>
          </li>
        </ul>
      </div>
    </div>
  </section>

  <!-- Section: Recent Posts & Todos -->
  <section class="section section-recent">
    <div class="row">
      <div class="col s12 l8 m6">
        <div class="card">
          <div class="card-content">
            <span class="card-title">Recent Posts</span>
            <table class="striped">
              <thead>
                <tr>
                  <th>Title</th>
                  <th>Category</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Post One</td>
                  <td>Web Development</td>
                  <td>
                    <a href="details.html" class="btn blue lighten-2">Details</a>
                  </td>
                </tr>
                <tr>
                  <td>Post Two</td>
                  <td>Graphic Design</td>
                  <td>
                    <a href="details.html" class="btn blue lighten-2">Details</a>
                  </td>
                </tr>
                <tr>
                  <td>Post Three</td>
                  <td>Web Development</td>
                  <td>
                    <a href="details.html" class="btn blue lighten-2">Details</a>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="col s12 m6 l4">
        <div class="card">
          <div class="card-content">
            <span class="card-title">Quick Todos</span>
            <form id="todo-form">
              <div class="input-field">
                <input id="todo" type="text" placeholder="Add Todo...">
              </div>
            </form>
            <ul class="collection todos">
              <li class="collection-item">
                <div>Todo One
                  <a href="#!" class="secondary-content delete">
                    <i class="material-icons">close</i>
                  </a>
                </div>
              </li>
              <li class="collection-item">
                <div>Todo Two
                  <a href="#!" class="secondary-content delete">
                    <i class="material-icons">close</i>
                  </a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

@endsection

@section("add")

<!-- Fixed Action Button -->
  <div class="fixed-action-btn">
    <a class="btn-floating btn-large red">
      <i class="material-icons">add</i>
    </a>
    <ul>
      <li>
        <a href="#post-modal" class="modal-trigger btn-floating blue">
          <i class="material-icons">mode_edit</i>
        </a>
      </li>
      <li>
        <a href="#category-modal" class="modal-trigger btn-floating blue">
          <i class="material-icons">folder</i>
        </a>
      </li>
      <li>
        <a href="#user-modal" class="modal-trigger btn-floating blue">
          <i class="material-icons">supervisor_account</i>
        </a>
      </li>
    </ul>
  </div>

@endsection

@section('scripts')

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
  <script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
  <script src="{{ asset('madmin/js/chart.js') }}"></script>

  <script>
    // Hide Sections
    $('.section').hide();

    setTimeout(function () {
      $(document).ready(function () {
        // Show sections
        $('.section').fadeIn();

        // Hide preloader
        $('.loader').fadeOut();

        //Init Side nav
        $('.button-collapse').sideNav();

        // Init Modal
        $('.modal').modal();

        // Init Select
        $('select').material_select();

        // Counter
        $('.count').each(function () {
          $(this).prop('Counter', 0).animate({
            Counter: $(this).text()
          }, {
              duration: 1000,
              easing: 'swing',
              step: function (now) {
                $(this).text(Math.ceil(now));
              }
            });
        });

        // Comments - Approve & Deny
        $('.approve').click(function (e) {
          Materialize.toast('Comment Approved', 3000);
          e.preventDefault();
        });
        $('.deny').click(function (e) {
          Materialize.toast('Comment Denied', 3000);
          e.preventDefault();
        });

        // Quick Todos
        $('#todo-form').submit(function (e) {
          const output = `<li class="collection-item">
                <div>${$('#todo').val()}
                  <a href="#!" class="secondary-content delete">
                    <i class="material-icons">close</i>
                  </a>
                </div>
              </li>`;

          $('.todos').append(output);

          Materialize.toast('Todo Added', 3000);

          e.preventDefault();
        });

        // Delete Todos
        $('.todos').on('click', '.delete', function (e) {
          $(this).parent().parent().remove();
          Materialize.toast('Todo Removed', 3000);

          e.preventDefault();
        });

        CKEDITOR.replace('body');

      });
    }, 1000);
  </script>

  @endsection