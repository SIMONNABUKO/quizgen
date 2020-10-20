  <?php
  use Illuminate\Support\Facades\Session;
  ?>
  @extends('layouts.dashboard')

  @section('content')
            <!--main content start-->
         
            
      <section id="main-content">
          <section class="wrapper">
            <div class="row">
              <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-question"></i>Questions</h3>
                <ol class="breadcrumb">
                  <li><i class="fa fa-home"></i><a href="/dashboard/home">Home</a></li>
                  <li><i class="fa fa-question"></i>Questions</li>
                <li><i class="fa fa-plus"></i>Add</li>
                </ol>
              </div>
            </div>


            <!-- edit-profile -->
  <div id="edit-profile" class="tab-pane">
    <section class="panel">
      <div class="panel-body bio-graph-info">
          @if (session()->has('errors'))
              @foreach ($errors as $error)
                  {{$error}}
              @endforeach
          @endif
        @if(\Session::has('message'))

        <p class="alert
        {{ Session::get('alert-class', 'alert-success') }}">{{Session::get('message') }}</p>
        
        @endif
        <form class="form-horizontal" method="POST" action="{{ route('questions.add')}}">
            @csrf
            <div class="form-group">
                <label class="col-lg-2 control-label">Question difficulty</label>
                <div class="col-lg-6">
                    <select name="difficulty" id="" class="form-control">
                        <option value="basic">Basic</option>
                        <option value="intermediate">Intermediate</option>
                        <option value="advanced">Advanced</option>
                    </select>
                  </div>
               
              </div>

              <div class="form-group">
                <label class="col-lg-2 control-label">Question Level</label>
                <div class="col-lg-6">
                    <select name="level" id="" class="form-control">
                        <option value="year1">First Year</option>
                        <option value="year2">Second Year</option>
                        <option value="year3">Third Year</option>
                        <option value="year4">Fourth Yeah</option>
                    </select>
                  </div>
                
              </div>


          <div class="form-group">
            <label class="col-lg-2 control-label">Subject</label>
            <div class="col-lg-6">
              <input type="text" class="form-control" name="subject" id="l-name" placeholder="Enter the subject">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-2 control-label">Question</label>
            <div class="col-lg-6">
              <textarea name="question" id="" class="form-control" cols="30" rows="5"></textarea>
            </div>
          </div>
         
        <input type="number" value="{{auth()->user()->id}}" name="user_id" hidden>
         
          
          

          <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
              <button type="submit" class="btn btn-success">Save</button>
              <a href="/dashboard/home" class="btn btn-danger">Cancel</a>
            </div>
          </div>
        </form>
      </div>
    </section>
  </div>


          </section>
        </section>
        <!--main content end-->
        
  @endsection
  
  
  
  
  
  
  
  
  
  
  
  
  