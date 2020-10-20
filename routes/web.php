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
Route::get('/dashboard/questions','App\Http\Controllers\DashboardController@questions')->middleware('is_admin');
Route::get('/dashboard/questions/add','App\Http\Controllers\DashboardController@addQuestionForm')->middleware('is_admin');
Route::post('/dashboard/questions/add','App\Http\Controllers\DashboardController@addQuestion')->name('questions.add')->middleware('is_admin');
Route::get('/dashboard/questions/{id}','App\Http\Controllers\DashboardController@question')->middleware('is_admin');

Route::get('/questions','App\Http\Controllers\QuestionsController@questions');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia\Inertia::render('Dashboard');
})->name('dashboard');
