<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // Authentication was successful...

            $request->session()->regenerate();
 
            return redirect('user/list');
        } else {
            dd('Credential Not match');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}
