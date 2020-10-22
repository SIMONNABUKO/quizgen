
@extends('layouts.dashboard')

@section('content')

  <!--main content start-->
  <section id="main-content">
    <section class="wrapper">
   
        <div class="container">
            <div class="row">
                <div class="col-lg-10">
                    <h1>
                        Exam Paper
                    </h1>

                    <h3>Please read the following instructions carefully</h3>
                    <p>
                    1. Check the exam timetable carefully.
                    directly to an exam hall or a waiting room.
                    </p>
                    <p>
                    2. Bring your Student ID Booklet
                    without these.
                    </p>
                    <p>
                    3. Do not bring any unauthorised material 
                    and glasses cases must not be taken to your desks. These will be checked and confiscated.
                    </p>
                    
                    <h2>Answer All Questions:</h2>
                    <ol>
                        @foreach ($questions as $question)
                    <li>{{$question->question}}</li><br/><br/> <hr style="color:#000"/><br/>
                        @endforeach
                    </ol>
                    
                </div>
            </div>
        </div>
{{-- 
<a href="/dashboard/exams/paper/download"> Download This Exam</a> --}}
    </section>
  </section>
@endsection