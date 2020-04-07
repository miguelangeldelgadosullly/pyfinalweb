@extends('layouts.app')




@section('content')
<div class="container">
    <h6>
@if ($search)
    

        <div class="alert alert-primary" role="alert">
           los resulytados para tu busqueda '{{$search}}' son:
          </div>

@endif
    </h6>
    <div class="col-sm-12"  >
      
<table class="table">
 
    <tbody>
        @foreach ($pelis as $peli )
          
       
     
   <td>
      

        <a href="{{route('peliculas.show', $peli->id)}}"><img src=" {{$peli->ph}}" alt="250px" width="350px" ></a>

         </td>
       
     
       

         


        
       
        
     
      @endforeach
    </tbody>
  </table>
<div class="row">
    <div class="mx-auto">
          {{$pelis->links()}}
    </div>
</div>
    </div>
</div>
@endsection