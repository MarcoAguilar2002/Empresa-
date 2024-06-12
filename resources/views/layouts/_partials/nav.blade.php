<thead class="table table-bordered text-center">
    <tr>
        <th scope="col" class="{{request()->routeIs('inicio')? 'activo' : '' }}"><a href="{{route('inicio')}}">Inicio</a></th>
        <th scope="col" class="{{request()->routeIs('personas')? 'activo' : '' }}" ><a href="{{route('personas')}}">Personas</a></th>
        <th scope="col" class="{{request()->routeIs('contacto')? 'activo' : '' }}"><a href="{{route('contacto')}}">Contacto</a></th>
    </tr>
</thead>