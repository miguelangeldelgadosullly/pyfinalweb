<?php

use Illuminate\Database\Seeder;
use App\Role;
use App\User;
class UserTableSeeder extends Seeder
{
    
    public function run()
    {
       




        $role_user = Role::where('name','user')->first();
        $role_admin = Role::where('name','admin')->first();




        $user = new User();
$user->name= "User";
$user->email= "user@phpelis.com";
$user->password= bcrypt('query');
$user->save();
$user->roles()->attach($role_user);


$user = new User();
$user->name= "Miguel Delgado Sully";
$user->email= "admin@phpelis.com";
$user->password= bcrypt('query');
$user->save();
$user->roles()->attach($role_admin);









    }
}
