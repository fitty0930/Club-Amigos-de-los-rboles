{include file="header.tpl"}
<div class="form-group">
    <form action="editararbol/{$arbol->id_arbol}" method="POST" enctype="multipart/form-data"> {* nuevo producto *}
        <div class="input-group-preprend">

            <label> Descripcion del ejemplar</label>
            <input class="form-control" type="text" name="descripcion" value="{$arbol->descripcion}">

            <label> Latitud </label>
            <input class="form-control" type="number" name="latitud" value="{$arbol->latitud}">

            <label> Longitud </label>
            <input class="form-control" type="number" name="longitud" value="{$arbol->longitud}">

            <label> Año Plantado </label>
            <input class="form-control" type="number" name="anio_plantado" value="{$arbol->anio_plantado}">

        </div>

        <label> Especies </label>
        <div class="input-group">
            <select class="custom-select" name="especie" id="especie">
                <option selected value="{$arbol->id_especie}"> {$arbol->nombre} </option>
                {foreach $especies as $especie}
                <option value="{$especie->id_especie}">{$especie->nombre}</option>
                {/foreach}
            </select>
        </div>
        <br>
        <label> Señalizacion </label>
        <div class="input-group">
            <select class="custom-select" name="senializado" id="senializado">
                <option selected value="{$arbol->senializado}"> {if $arbol->senializado==1} Si {else} No {/if}</option>
                {if $arbol->senializado==1}
                <option value="0"> No </option>
                {else}
                <option value="1"> Si </option>
                {/if}
            </select>
        </div>
        <button type="submit" class="btn btn-primary"> Editar</button>
    </form>
</div>
{include file="footer.tpl"}