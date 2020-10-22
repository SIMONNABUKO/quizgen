@extends('layouts.dashboard')

@section('content')
      <!--main content start-->
      <section id="main-content">
        <section class="wrapper">

              <!--overview start-->
          <div class="row">
            <div class="col-lg-12">
              <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
              <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="/dashboard/home">Home</a></li>
                <li><i class="fa fa-question"></i>Questions</li>
              </ol>
            </div>
          </div>

          <div class="flash-message">
            @if(\Session::has('message'))

            <p class="alert
            {{ Session::get('alert-class', 'alert-success') }}">{{Session::get('message') }}</p>
            @endif
          </div> <!-- end .flash-message -->

          <div class="row">

            <div class="col-lg-9 col-md-12">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h2><i class="fa fa-flag-o red"></i><strong>Aproved Questions</strong></h2>
                  <div class="panel-actions">
                    <a href="#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                    <a href="#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="fa fa-times"></i></a>
                  </div>
                </div>
                <div class="panel-body">
                  <table class="table bootstrap-datatable countries">
                    <thead>
                      <tr>
                        <th>Question</th>
                      
                        <th>Level</th>
                        <th>Difficulty</th>
                        <th>View</th>
                        <th>Edit</th>
                        <th>Delete</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                        @if (count($questions)> 0)
                            @foreach ($questions as $quiz)
                            <tr>
                                <td>{{$quiz->question}}</td>
                                <td>{{$quiz->level}}</td>
                                <td>{{$quiz->difficulty}}</td>
                                <td><a href="#"><i class="fa fa-eye text-success"></i></a></td>
                            <td><a href="/dashboard/questions/update/{{$quiz->id}}"><i class="fa fa-edit text-info"></i></a></td>
                                <td><form action="{{ route('question.delete', ['id' => $quiz->id]) }}" method="POST" >
                                  @csrf
                                  <input type="submit" class="btn btn-sm btn-danger" value="Delete">
                                </form></td>
                               
                              </tr>
                            @endforeach
                        @endif
                    </tbody>
                  </table>

                  {{ $questions->links() }}
                </div>
  
              </div>
  
            </div>
            
            </div>
            <!--/col-->
  
          </div>
  


        </section>


      </section>
      <!--main content end-->
@endsection