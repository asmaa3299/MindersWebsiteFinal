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



Route::get('/', 'HomeController@minders')->name('minders');

Route::get('/panal', 'HomeController@panal')->name('panal');
//contact
Route::post('/', 'contactController@store');

Route::get('/contacts/index.blade.php', 'contactController@index');

Route::get('/allevent', 'eventController@showallevent')->name('allevent');
Route::get('/allmember', 'MemberController@showallmember')->name('allmember');


Auth::routes();




Route::get('/home', 'HomeController@index')->name('home');

Route::get('/events/index.blade.php', 'eventController@allevent');
//add event
Route::get('/events/addevent.blad.php', 'eventController@show')->name('show');
Route::post('/events/index.blade.php', 'eventController@add');

Route::get('/events/{id}/edit', 'eventController@edit')->name('editprofile');
Route::put('/events/{id}', 'eventController@update');

//to delete
Route::delete('/events/{id}', 'eventController@destroy');
Route::get('/events/{id}', 'eventController@showeventdetails');


//members

Route::get('/members/index.blade.php', 'MemberController@index');

Route::get('/members/create.blade.php', 'MemberController@create');
Route::post('/members/index.blade.php', 'MemberController@store');


Route::get('/members/{id}/edit', 'MemberController@edit');
Route::put('/members/{id}', 'MemberController@update');

//to delete
Route::delete('/members/{id}', 'MemberController@destroy');

