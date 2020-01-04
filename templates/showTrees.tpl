{include file="header.tpl"}
<p>
    Aqui vamos a mostrar los arboles
</p>
<div class="col-md-6">
    <table class="table">
    <thead>
        <tr>
        <th scope="col"> Arbol </th>
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

{include file="footer.tpl"}