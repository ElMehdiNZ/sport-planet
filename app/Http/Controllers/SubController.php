<?php

namespace App\Http\Controllers;
use App\Http\Requests\RegisterRequest;
use App\Models\Subscriber;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SubController extends Controller
{   
    public function register(RegisterRequest $request)
    {
        $sub = Subscriber::create([
            'first_name'=>ucwords($request->first_name),
            'last_name'=>ucwords($request->last_name),
            'email'=>$request->email,
            'telephone'=>$request->telephone,
            'ville'=>ucwords($request->ville),
            'activite'=>ucwords($request->activite),
            'subtype'=>ucwords($request->subtype),
        ]); 

        return $sub;
    }

    public function getsub(){
        return Subscriber::latest()->paginate(5, page: request()->page);
    }

    public function destroy(Subscriber $subscriber,$id)
    {
        $subscriber = Subscriber::findOrFail($id);
        $subscriber->delete();
    }
}