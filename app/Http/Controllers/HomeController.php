<?php

namespace App\Http\Controllers;
use App\Pelis;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
   // public function __construct()
   // {
   //     $this->middleware('auth');
   // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        if ($request) {
    $query = trim($request->get('search'));
    $pelis = Pelis::where('nombre', 'LIKE', '%'. $query .'%')
    ->orderBy('id','asc')
    ->simplepaginate(3);

    return view('home', ['pelis' => $pelis, 'search'=> $query]);

}
    
}
}