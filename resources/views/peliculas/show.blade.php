@extends('layouts.app')





@section('content')
    



  <table class="table">
   
    
      <tr>

      <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h1 class="display-4"><img src=" {{$pelis->ph}}" alt="" width="300px"> {{$pelis->nombre}}</h1>
  
      <p class="lead">{{$pelis->desc}}</p>
     
    </div>
  </div>
    
      </tr>
    
      
    <tbody>
    
            
       
      <tr>
       
      
     





      


        <td>

            <iframe width="860" height="515" src="{{$pelis->link}}"  frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  
            
            
          
          
          
          </td>
        
      </tr>
    
    </tbody>
  </table>











@endsection