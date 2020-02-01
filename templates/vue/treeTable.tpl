{literal}

<section id="arboles-api">
<div class="col-md-8">
    <div v-if="cargando" class="card-body">
        Cargando...
    </div>
    <table class="table">
        <thead>
            <tr>
                <th scope="col"> Descripcion del ejemplar </th>
                <th scope="col"> Tipo de arbol</th>
                <th scope="col"> Año de plantación </th>
                <th scope="col"> Señalizacion </th>
            </tr>
        </thead>
        <tbody>
            
            <tr v-for="arbol in arboles">
                <td><a :href="'arboles/'+arbol.id_arbol">{{ arbol.descripcion }}</a></td>
                {* EXAMPLE <img v-bind:src="Variable + 'img/logo.png'"> *}
                <td>{{ arbol.nombre }}</td>
                <td>{{ arbol.anio_plantado }}</td>
                
            </tr>
            
        </tbody>
    </table>
</div>
</section>
{/literal}