{literal}

<section id="arboles-api">
    <div class="container">
    <div class="row">
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
                        <th scope="col"> Botonera </th>
                    </tr>
                </thead>
                <tbody>

                    <tr v-for="arbol in arboles">
                        <td><a :href="'arboles/'+arbol.id_arbol">{{ arbol.descripcion }}</a></td>
                        <td>{{ arbol.nombre }}</td>
                        <td>{{ arbol.anio_plantado }}</td>
                        <td>
                            <p v-if="arbol.senializado == 1"> Si </p>
                            <p v-if="arbol.senializado == 0"> No </p>
                        <td>
                        <td>
                            <button class="btn btn-danger" @click="(event)=>{borrarEspecimen(event, arbol.id_arbol)}" class="borrar"> Borrar </button>
                            <button class="btn btn-warning" @click="(event)=>{editarEspecimen(event, arbol.id_arbol)}" class="borrar"> Modificar </button>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
        <div class="col-md-3">
            <h5> Editar / Modificar <h5>
            <label> Descripcion </label>
            <input id="editar-descripcion-arbol" class="form-control" type="text" name="descripcion" placeholder="algun arbol">

            <label> Latitud </label>
            <input id="editar-latitud-arbol" class="form-control" type="number" name="latitud" placeholder="10">

            <label> Longitud </label>
            <input id="editar-longitud-arbol" class="form-control" type="number" name="longitud" placeholder="10">

            <label> Año Plantado </label>
            <input id="editar-anioplantado-arbol" class="form-control" type="number" name="anio_plantado" placeholder="1000">


            {/literal}
            <label> Especies </label>
            <div class="input-group">
                <select class="custom-select" name="especie" id="editar-especie-arbol">
                    <option selected value=""> Elija un tipo de arbol </option>
                    {foreach $especies as $especie}
                    <option value="{$especie->id_especie}">{$especie->nombre}</option>
                    {/foreach}
                </select>
            </div>
            {literal}
            <br>
            <label> Señalizacion </label>
            <div class="input-group">
                <select class="custom-select" name="senializado" id="editar-senializado-arbol">
                    <option selected value=""> Su arbol esta señalizado? </option>
                    <option value="1"> Si </option>
                    <option value="0"> No </option>
                </select>
            </div>
        </div>
    </div>
    <div>
        <div class="col-md-12">
            <h4 class="mb-0 card-header">Agregar o modificar un especimen con CSR </h4>
            <br>

            <label> Descripcion </label>
            <input id="descripcion-arbol" class="form-control" type="text" name="descripcion" placeholder="algun arbol">

            <label> Latitud </label>
            <input id="latitud-arbol" class="form-control" type="number" name="latitud" placeholder="10">

            <label> Longitud </label>
            <input id="longitud-arbol" class="form-control" type="number" name="longitud" placeholder="10">

            <label> Año Plantado </label>
            <input id="anioplantado-arbol" class="form-control" type="number" name="anio_plantado" placeholder="1000">


            {/literal}
            <label> Especies </label>
            <div class="input-group">
                <select class="custom-select" name="especie" id="especie-arbol">
                    <option selected value=""> Elija un tipo de arbol </option>
                    {foreach $especies as $especie}
                    <option value="{$especie->id_especie}">{$especie->nombre}</option>
                    {/foreach}
                </select>
            </div>
            {literal}
            <br>
            <label> Señalizacion </label>
            <div class="input-group">
                <select class="custom-select" name="senializado" id="senializado-arbol">
                    <option selected value=""> Su arbol esta señalizado? </option>
                    <option value="1"> Si </option>
                    <option value="0"> No </option>
                </select>
            </div>
            <button class="btn btn-success btn-block" @click="agregarEspecimen">Agregar</button>
        </div>
    </div>
</section>
{/literal}