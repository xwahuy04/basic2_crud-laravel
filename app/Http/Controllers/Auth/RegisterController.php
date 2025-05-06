<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserValidate;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function register()  
    {
        return view('register'); 
    }

    
    public function store(UserValidate $request)  
    {
       
        $image = $request->file('image');

        if($image)
        {
            $img_name = time().rand(100000, 999999).$request->image->getClientOriginalName();
            $image->move('image/' , $img_name);
            $img_name = "image/" . $img_name;
        }

        $user = new User();
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->password = Hash::make($request->password);
        $user->email = $request->email;
        $user->hobby = ($request->hobby) ? implode(',' , $request->hobby) : null;
        $user->gender = $request->gender;
        $user->phone = $request->phone;
        $user->image = isset($img_name) ? $img_name : null;
        $user->save();
        return redirect('/')->with('success', 'User Register Successfully');
    }
}
