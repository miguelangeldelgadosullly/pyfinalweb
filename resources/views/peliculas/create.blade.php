@extends('layouts.app')




@section('content')
   
<div class="container">

    <div class="row">

        <div class="col-sm-6">

      



<form action="/peliculas" method="POST">
 @csrf
    <div class="form-group">
      <label for="nombre">NOMBRE</label>
      <input type="text" class="form-control" name="nombre" placeholder="Escribe el nombre">
      
    </div>
      <div class="form-group">
        <label for="desc">DESCRIPCION</label>
        <input type="text" class="form-control" name="desc" placeholder="Escribe la descripcion">
        
      </div>
    <div class="form-group">
        <label for="link">LINK</label>
        <input type="text" class="form-control" name="link" placeholder="Escribe el link">
        
      </div>
      <div class="form-group">
        <label for="ph">FOTO</label>
        <input type="text" class="form-control" name="ph" placeholder="Escribe el link">
        
      </div>
    

    <button type="submit" class="btn btn-primary">Agregar</button>
    <button type="reset" class="btn btn-danger">Cancelar</button>
  </form>
  </div>
    </div>
</div>


















@endsection