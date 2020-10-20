<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
use App\Models\User;

class QuestionsController extends Controller
{
    public function questions(){
        $questions = Question::all();
        return response()->json($questions);
    }
}
