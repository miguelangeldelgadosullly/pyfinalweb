<?php

use Illuminate\Database\Seeder;
use App\Role;
class RoleTableSeeder extends Seeder
{
    



    public function run()
    {
      
        


$role= new Role();
$role->name= "admin";
$role->save();

$role= new Role();
$role->name= "user";
$role->save();





    }
}
