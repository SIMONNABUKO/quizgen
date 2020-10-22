<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/dashboard/home','App\Http\Controllers\DashboardController@home')->middleware('is_admin');
Route::get('/dashboard/users','App\Http\Controllers\DashboardController@users')->middleware('is_admin');
Route::get('/dashboard/users/add','App\Http\Controllers\DashboardController@addUserForm')->middleware('is_admin');
Route::get('/dashboard/users/{id}','App\Http\Controllers\DashboardController@user')->middleware('is_admin');
Route::post('/dashboard/users/delete/{id}','App\Http\Controllers\DashboardController@deleteUser')->name('user.delete')->middleware('is_admin');

Route::get('/dashboard/questions','App\Http\Controllers\DashboardController@questions')->middleware('is_admin');
Route::get('/dashboard/questions/add','App\Http\Controllers\DashboardController@addQuestionForm')->middleware('is_admin');
Route::post('/dashboard/questions/add','App\Http\Controllers\DashboardController@addQuestion')->name('questions.add')->middleware('is_admin');
Route::get('/dashboard/questions/{id}','App\Http\Controllers\DashboardController@question')->middleware('is_admin');
Route::get('/dashboard/questions/update/{id}','App\Http\Controllers\DashboardController@updateQuestionForm')->name('questions.updat')->middleware('is_admin');
Route::post('/dashboard/questions/update/{id}','App\Http\Controllers\DashboardController@updateQuestion')->name('questions.update')->middleware('is_admin');
Route::post('/dashboard/questions/delete/{id}','App\Http\Controllers\DashboardController@deleteQuestion')->name('question.delete')->middleware('is_admin');

Route::get('/dashboard/exams/generate','App\Http\Controllers\QuestionsController@generateExamForm')->name('exam.generate')->middleware('is_admin');
Route::post('/dashboard/exams/download','App\Http\Controllers\QuestionsController@downloadExam')->name('exam.download')->middleware('is_admin');
Route::get('/dashboard/exams/paper','App\Http\Controllers\QuestionsController@downloadExam')->name('exam.paper')->middleware('is_admin');
// Route::get('/dashboard/exams/paper/download','App\Http\Controllers\QuestionsController@download')->name('exam.download')->middleware('is_admin');

Route::get('/questions','App\Http\Controllers\QuestionsController@questions');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia\Inertia::render('Dashboard');
})->name('dashboard');
