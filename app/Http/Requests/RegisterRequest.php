<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'first_name'=>'required|min:3',
            'last_name'=>'required|min:3',
            'email'=>'required|email',
            'telephone'=>[
                'required',
                'string',
                'max:255',
                'regex:/^\+?[0-9]{10,15}$/'
            ],
            'ville'=>'required',
            'activite'=>'required',
            'subtype'=>'required',
        ];
    }
}
