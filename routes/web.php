<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ChatbotController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return view('chatbot');
});

Route::get('/chatbot/responder/{id?}', [ChatbotController::class, 'responder'])
     ->whereNumber('id');
