{include file="header.tpl"}
<div class="form-group">
    <form action="editarespecie/{$especie->id_especie}" method="POST" enctype="multipart/form-data"> {* nuevo producto *}
        <div class="input-group-preprend">

            <label> Nombre de la especie </label>
            <input class="form-control" type="text" name="nombre" value="{$especie->nombre}">

            <label> Descripcion </label>
            <input class="form-control" type="text" name="descripcion" value="{$especie->descripcion}">

        </div>
    <button type="submit" class="btn btn-primary"> Editar</button></form>

    
</div>
{include file="footer.tpl"}