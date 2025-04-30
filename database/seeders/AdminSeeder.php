<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         // ini kode jika ingin membuat duplikat
         $user = User::where('email' , 'havid2@gmail.com')->first();

         if(!$user)
         {
             
             $user = new User();
 
         }
         $user->first_name = "Wahyu";
         $user->last_name = "Havid";
         $user->email = "haviid2@gmail.com";
         $user->password = Hash::make('password');
         $user->save();
    }
}
