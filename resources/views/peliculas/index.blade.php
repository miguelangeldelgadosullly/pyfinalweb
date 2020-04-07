@extends('layouts.app')




@section('content')
<div class="container">
    <h2>Lista de peliculas registradas <a href="peliculas/create"> <button type="button" class="btn btn-success float-right">Agregar pelicula</button><a></h2>
<table class="table">
    <thead class="thead-dark">
      <tr>

        <th scope="col">NOMBRE</th>
        <th scope="col">LINK</th>
        <th scope="col">DESCRIPCION</th>
        <th scope="col">Imagen</th>
        <th scope="col">Opciones</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($pelis as $peli )
            
       
      <tr>
       
        <td>{{$peli->nombre}}</td>
        
        
        <td>

          <iframe width="360" height="215" src="{{$peli->link}}"  frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

          
          
        
        
        
        </td>





        <td>{{$peli->desc}}</td>


        <td>

<img src=" {{$peli->ph}}" alt="" width="150px">

         
        
        </td>
       
        <td>
       
<form action="{{ route('peliculas.destroy', $peli->id) }}" method="POST">
  <a href="{{route('peliculas.show', $peli->id)}}">  <button type="button" class="btn btn-secondary">Ver</button></a>
       <a href="{{ route('peliculas.edit', $peli->id) }}"> <button type="submit" class="btn btn-primary">Editar</button></a>  

@csrf
@method('DELETE')

<button type="submit" class="btn btn-danger">Borrar</button>
</form>

          


        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
</div>
@endsection