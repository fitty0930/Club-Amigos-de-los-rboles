{include file="header.tpl"}
<p>
    Aqui vamos a mostrar los arboles
</p>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col"> Tipo de arbol</th>
                        <th scope="col"> Año de plantación </th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $arboles as $arbol}
                    <tr>
                        <td><a href="arboles/{$arbol->id_arbol}"> {$arbol->nombre} </a></td>
                        <td>{$arbol->anio_plantado}</td>
                    </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        {* formulario de llenado *}
        <div class="col-md-4">
            <h4> Agregar un arbol nuevo </h4>
            <div class="form-group">
                <form action="nuevoarbol" method="POST" enctype="multipart/form-data"> {* nuevo producto *}
                    <div class="input-group-preprend">

                        <label> Descripcion </label>
                        <input class="form-control" type="text" name="descripcion" placeholder="algun arbol">

                        <label> Latitud </label>
                        <input class="form-control" type="number" name="latitud" placeholder="10">

                        <label> Longitud </label>
                        <input class="form-control" type="number" name="longitud" placeholder="10">

                        <label> Año Plantado </label>
                        <input class="form-control" type="number" name="anio_plantado" placeholder="1000">

                    </div>

                    <label> Especies </label>
                    <div class="input-group">
                        <select class="custom-select" name="especie" id="especie">
                            <option selected value=""> Elija un tipo de arbol </option>
                            {foreach $especies as $especie}
                            <option value="{$especie->id_especie}">{$especie->nombre}</option>
                            {/foreach}
                        </select>
                    </div>
                    <br>
                    <label> Señalizacion </label>
                    <div class="input-group">
                        <select class="custom-select" name="senializado" id="senializado">
                            <option selected value=""> Su arbol esta señalizado? </option>
                            <option value="1"> Si </option>
                            <option value="0"> No </option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary"> Agregar Arbol </button>
                </form>
            </div>
        </div>
    </div>
</div>
{include file="footer.tpl"}