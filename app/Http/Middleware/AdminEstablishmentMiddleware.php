<?php

namespace App\Http\Middleware;

use Closure;

class AdminEstablishmentMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {



if (!(\auth)->check()) {
    return redirect('/login')->with('error', 'debes iniciar sesion'});
}

if (!(\auth)->user()->role_id==2) {
    return redirect('/')->with('error', 'No tienes los permisos para acceder'});
}


        return $next($request);
    }
}
