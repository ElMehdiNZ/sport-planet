<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function response($user)
    {
        $token = $user->createToken( str()->random(40) )->plainTextToken;

        return response()->json([
            'user'=>$user,
            'token'=>$token,
            'token_type'=>'Bearer'
        ]);
    }

    public function register(Request $request)
    {
        $request->validate([
            'name'=>'required|min:3',
            'email'=>'required|email|unique:users',
            'password'=>'required|min:6|confirmed'
        ]);

        $user = User::create([
            'name'=>ucwords($request->name),
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
        ]);

        return $this->response($user);
    }

    public function login(Request $request)
    {
        //$user = User::where('email',$request->email)->first();

        $cred = $request->validate([
            'email'=>'required|email|exists:users',
            'password'=>'required|min:4',
        ]);

        if ( !Auth::attempt( $cred ) ) {
            return response()->json([
                'message'=>'Unauthorized.'
                //'token'=>$user->createToken(time())->plainTextToken
            ],401);
        }

        return $this->response( Auth::user() );
    }

    /*public function dashboard()
    {
        return response()->json([
            'success' => 'Bienvenue'
        ]);
    }*/

    public function logout()
    {
        Auth::user()->tokens()->delete();

        return response()->json([
            'message'=>'you have successfully logged out and token was successfully deleted.'
        ]);
    }
}
