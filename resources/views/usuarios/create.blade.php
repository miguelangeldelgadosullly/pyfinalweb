@extends('layouts.app')




@section('content')



<div class="container">
<div class="row">
<div class="col-sm-6">

<form action="/usuarios" method="POST">
    @csrf
    <div class="form-group">
      <label for="name">Nombre</label>
      <input type="text" class="form-control" name="name" placeholder="Escribe tu nombre">
     
    </div>

    <div class="form-group">
        <label for="email">Email </label>
        <input type="text" class="form-control" name="email" placeholder="Escribe tu correo">
        
      </div>

    <div class="form-group">
      <label for="password">Contraseña</label>
      <input type="password" class="form-control" name="password" placeholder="Escribe tu contraseña">
    </div>

    <button type="submit" class="btn btn-primary">Agregar</button>
    <button type="reset" class="btn btn-danger">Cancelar</button>
  </form>
</div>
</div>
</div>














@endsection