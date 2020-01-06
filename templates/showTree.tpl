{include file="header.tpl"}
<p> Ficha Técnica: </p>
<h5> Nombre de la especie </h5>
<p>
    {$arbol->nombre}
</p>
<h5> Descripcion de la especie </h5>
<p>
    {$arbol->descripcionsp}
</p>
<h5> Descripcion del ejemplar </h5>
<p>
    {$arbol->descripcion}
</p>
<a href="borrararbol/{$arbol->id_arbol}" class="badge badge-danger text-wrap" style="width: 6rem;"> Borrar </a>
<a class="badge badge-warning text-wrap" style="width: 6rem;" href="editordearbol/{$arbol->id_arbol}"> Modificar </a>
                       
<a href="./"> Volver </a>
{include file="footer.tpl"}