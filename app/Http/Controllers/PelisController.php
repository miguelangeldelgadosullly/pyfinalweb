<?php

namespace App\Http\Controllers;
use App\Pelis;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;

class PelisController extends Controller
{

public function __construct(){

    $this->middleware('auth');




}








   
    public function index(Request $request)
    {


$request->user()->authorizeRoles('admin');

if ($request) {
    $query = trim($request->get('search'));
    $pelis = Pelis::where('nombre', 'LIKE', '%'. $query .'%')
    ->orderBy('id','asc')
    ->get();

    return view('peliculas.index', ['pelis' => $pelis, 'search'=>$query]);

}

      //  $pelis=Pelis::all();
      //  return view('peliculas.index', ['pelis' => $pelis]);

    }

    
    public function create()
    {
        return view('peliculas.create');
    }

    
    public function store(Request $request)
    {
       
$pelicula = new Pelis();

$pelicula->nombre=  $request->nombre;
$pelicula->desc= $request->desc;
$pelicula->link=  $request->link;
$pelicula->ph=  $request->ph;


$pelicula->save();

 return redirect('/peliculas');


    }

   
    public function show($id)
    {
        return view('peliculas.show', ['pelis'=>Pelis::findOrFail($id)]);
    }

    
    public function edit($id)
    {
     return view('peliculas.edit', ['pelis'=>Pelis::findOrFail($id)]);
    }

  
    public function update(Request $request, $id)
    {
        $pelicula = Pelis::findOrFail($id);

$pelicula->nombre=  $request-> get('nombre') ;
$pelicula->desc= $request-> get('desc') ;
$pelicula->link=  $request-> get('link') ;
$pelicula->ph=  $request-> get('ph') ;


$pelicula->update();

return redirect('/peliculas');

    }

  
    public function destroy($id)
    {
        $pelicula = Pelis::findOrFail($id);

$pelicula->delete();


        return redirect('/peliculas');



    }
}
