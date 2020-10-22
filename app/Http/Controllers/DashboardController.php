<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Question;
use App\Models\User;
use App\Models\Activity;

class DashboardController extends Controller
{
    public function home(){
        $basicQuestions = Question::where('level', 'basic')->get();
        $intemediateQuestions = Question::where('level', 'intermediate')->get();
        $advancedQuestions = Question::where('level', 'advanced')->get();
        $questions = Question::paginate(20);
        $all_users=User::all();
        $all_questions=Question::all();
        $users = User::paginate(20);

        $data = array(
            'basicQuestions' => $basicQuestions,
            'intemediateQuestions' => $intemediateQuestions,
            'advancedQuestions' => $advancedQuestions,
            'users'=>$users,
            'questions'=>$questions,
            'all_users'=>$all_users,
            'all_questions'=>$all_questions
        );
        \View::share('data', $data);

        return view('pages.home');
    }


    public function users(){
        $users = User::paginate(20);
        return view('pages.users')->withUsers($users);
    }
    public function addUserForm(){
        return view('pages.add_user');
    }
    public function user($id){
        $user = User::find($id);

        $activity = "Viewed ".$user->name."'s".' '."Profile";
        $user_id = auth()->user()->id;

        $acti = new Activity;
        $acti->activity = $activity;
        $acti->user_id = $user_id;
        $acti->save();
        $activities = Activity::where('user_id', $id)->latest()->get();
        $data = array(
            "user"=>$user,
            "activities"=>$activities
        );
        return view('pages.user')->withData($data);
    }


    public function deleteUser(Request $request){
        
        $userId = $request->id;
        $user = User::find($userId);
        $user->delete();
        $acti = new Activity;
        $acti->activity = "Deleted User: ".$user->name;
        $acti->user_id = auth()->user()->id;
        $acti->save();
        Session::flash('message','User Deleted Successfully!'); 
        Session::flash('alert-class','alert-success'); 
        return back();
    }


    public function questions(){
        $questions =    Question::paginate(20);
        return view('pages.questions')->withQuestions($questions);
    }
   
    public function addQuestion(Request $request){
        $request->validate([
            'question' => 'bail|required|unique:questions',
            'user_id' => 'required',
        ]);
        if(Question::create($request->all()))
        {
        $activity = "Added A question: ".$request->question;
        $user_id = auth()->user()->id;
        $acti = new Activity;
        $acti->activity = $activity;
        $acti->user_id = $user_id;
        $acti->save();
        
        Session::flash('message','Question Added Successfully!'); 
        Session::flash('alert-class','alert-success'); 
        }else{
        Session::flash('message','Error encountered!'); 
        Session::flash('alert-class','alert-danger');    
        }
        return back();
    }

    public function addQuestionForm(){
        return view('pages.add_question');
    }

    //Display Question Update Form
    public function updateQuestionForm($id){
        
        $questionId =$id;
        $question = Question::find($questionId);
        return view('pages.edit_question')->withQuestion($question);
    } 

     //Display Question Update Form
     public function updateQuestion(Request $request){
        
        $questionId = $request->id;
        $question = Question::find($questionId);
        $request->validate([
            'question' => 'bail|required|unique:questions',
            'user_id' => 'required',
        ]);
        $question->question = $request->question;
        $question->user_id = $request->user_id;
        $question->difficulty = $request->difficulty;
        $question->level = $request->level;
        $question->subject = $request->subject;
        $question->save();
        
        $activity = "Updated question: ".$request->question;
        $user_id = auth()->user()->id;
        $acti = new Activity;
        $acti->activity = $activity;
        $acti->user_id = $user_id;
        $acti->save();
        
        Session::flash('message','Question Updated Successfully!'); 
        Session::flash('alert-class','alert-success'); 
        return redirect('/dashboard/questions');
    } 

   public function deleteQuestion(Request $request){
        
        $questionId = $request->id;
        $question = Question::find($questionId);
        $question->delete();
        $acti = new Activity;
        $acti->activity = "Deleted Question: ".$question->question;
        $acti->user_id = auth()->user()->id;
        $acti->save();
        Session::flash('message','Question Deleted Successfully!'); 
        Session::flash('alert-class','alert-success'); 
        return back();
    }


    
}
