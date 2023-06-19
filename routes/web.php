<?php

use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\NoteController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ViewController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [ViewController::class,'Welcome_View'])->middleware('guest')->name("Welcome_View");
Route::get('/Login', [ViewController::class,'Login_View'])->middleware('guest')->name("Login_View");
Route::get('/Register', [ViewController::class,'Register_View'])->middleware('guest')->name("Register_View");
Route::get('/ToDo', [ViewController::class,'ToDo_View'])->middleware('auth')->name("ToDo_View");
Route::get('/imageNote/{id}', [ViewController::class,'ImageNote_View'])->middleware('auth')->name("ImageNote_View");


//Авторизация
Route::post('/Register', [RegisterController::class,'Register'])->middleware('guest')->name("Register");
Route::post('/Login', [LoginController::class,'Login'])->middleware('guest')->name("Login");
Route::get('/Logout', [LogoutController::class,'Logout'])->middleware('auth')->name("Logout");

Route::POST('/AddList', [NoteController::class,'AddList'])->middleware('auth')->name("AddList");


Route::GET('/NoteList/{id}',[NoteController::class,'NoteList'])->middleware('auth')->name("NoteList");
Route::POST('/AddNote',[NoteController::class,'AddNote'])->name("AddNote");
Route::PATCH('/AddChecked',[NoteController::class,'AddChecked'])->name("AddChecked");
Route::POST('/AddNoteTag',[NoteController::class,'AddNoteTag'])->name("AddNoteTag");
Route::DELETE('/DeleteNote',[NoteController::class,'DeleteNote'])->name("DeleteNote");
Route::GET('/NoteArr/{id}',[NoteController::class,'NoteArr'])->name("NoteArr");
Route::GET('/ListArr/{id}',[NoteController::class,'ListArr'])->name("ListArr");


Route::PATCH('/DeleteImageNote',[NoteController::class,'DeleteImageNote'])->name("DeleteImageNote");
