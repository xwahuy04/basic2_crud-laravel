<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserValidate;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request)
    {
        if (!Auth::user()) {
            return redirect('/');
        }

        $search = $request->search;
        $users = User::paginate(5);

        if($search)
        {
            $users = User::where('first_name', 'LIKE', '%' . $search . '%')
                ->orWhere('last_name', 'LIKE', '%' . $search . '%')
                ->orWhere('email', 'LIKE', '%' . $search . '%')
                ->orWhere('phone', 'LIKE', '%' . $search . '%')
                ->orWhere('gender', 'LIKE', '%' . $search . '%')
                ->paginate(5);
        }
        return view('user-list', compact('users' , 'search'));
    }

    // public function search(Request $request)
    // {
    //     //    $users = User::where('first_name' , $search)
    //     //                 ->orWhere('last_name' , $search)
    //     //                 ->orWhere('email' , $search)
    //     //                 ->orWhere('phone' , $search)
    //     //                 ->orWhere('gender' , $search)
    //     //                 ->paginate(5);
    //     //    return view('user-list' , compact('users'));
    //     $search = $request->search;
    //     $users = User::paginate(5);
    //     if ($search != '') {
    //         $users = User::where('first_name', 'LIKE', '%' . $search . '%')
    //             ->orWhere('last_name', 'LIKE', '%' . $search . '%')
    //             ->orWhere('email', 'LIKE', '%' . $search . '%')
    //             ->orWhere('phone', 'LIKE', '%' . $search . '%')
    //             ->orWhere('gender', 'LIKE', '%' . $search . '%')
    //             ->paginate(5);
    //         }
    //     return view('user-list', compact('users'));
    // }

    public function create()
    {

        if (!Auth::user()) {
            return redirect('/');
        }

        return view('user-create');
    }

    public function store(UserValidate $request)
    {
        if (!Auth::user()) {
            return redirect('/');
        }

        $user = new User();
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->password = Hash::make($request->password);
        $user->email = $request->email;
        $user->gender = $request->gender;
        $user->phone = $request->phone;
        $user->save();
        return redirect('user/list');
    }

    public function edit($id)
    {
        if (!Auth::user()) {
            return redirect('/');
        }

        $user = User::find($id);
        return view('user-edit', compact('user'));
    }

    public function update(Request $request)
    {
        if (!Auth::user()) {
            return redirect('/');
        }

        $id = $request->id;
        $user = User::find($id);
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email = $request->email;
        $user->gender = $request->gender;
        $user->phone = $request->phone;
        $user->save();
        return redirect('user/list');
    }

    public function show($id)
    {
        // dd($id);
    }

    public function delete($id)
    {
        if (!Auth::user()) {
            return redirect('/');
        }

        $user = User::find($id);
        $user->delete();

        return redirect('user/list');
    }
}
