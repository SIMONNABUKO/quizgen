<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
use App\Models\User;
use PDF;

class QuestionsController extends Controller
{
    public function questions(){
        $questions = Question::all();
        return response()->json($questions);
    }

    public function generateExamForm(){
        $questions = Question::all();
        return view('pages.generate_exam')->withQuestions($questions);
    }


    public function downloadExam(Request $request){
        $questions = Question::where('level', $request->level)
                                ->where('subject', $request->subject)
                                ->where('difficulty', $request->difficulty)
                                ->get();
        return view('pages.exam')->withQuestions($questions);
        
    }

    
   

    
}


