<?php

use App\Http\Controllers\ActivityController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SubController;
use App\Http\Controllers\PlanController;
use App\Http\Controllers\SiteController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::post('register',[AuthController::class,'register']);

Route::post('login',[AuthController::class,'login']);

Route::middleware('auth:sanctum')->group(function(){
    Route::post('logout',[AuthController::class,'logout']);
    Route::get('user',function(Request $request){
        return $request->user();
    });
});

//subscribers
Route::post('register2',[SubController::class,'register']);
Route::get('getsub',[SubController::class,'getsub']);
Route::delete('delete-sub/{id}',[SubController::class,'destroy']);


//sites
Route::post('add-site',[SiteController::class,'create']);
Route::get('sites',[SiteController::class,'index']);
Route::get('site/{id}',[SiteController::class,'show']);
Route::put('update-site/{site:id}',[SiteController::class,'update']);
Route::delete('delete-site/{id}',[SiteController::class,'destroy']);


//posts
Route::post('add-plan',[PlanController::class,'create']);
Route::get('getplan',[PlanController::class,'index']);
Route::get('plan/{plan:id}',[PlanController::class,'show']);
Route::put('update-plan/{plan:id}',[PlanController::class,'update']);
Route::delete('delete-plan/{id}',[PlanController::class,'destroy']);


//Activity
Route::post('add-activity',[ActivityController::class,'create']);
Route::get('activities',[ActivityController::class,'index']);
Route::get('activity/{activity:id}',[ActivityController::class,'show']);
Route::delete('delete-activity/{id}',[ActivityController::class,'destroy']);
Route::put('update-activity/{activity:id}',[ActivityController::class,'update']);
