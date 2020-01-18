{include file="header.tpl"}
<h4 class="text-center">
    Especie: {$especieFiltros[0]->nombre}
</h4>
<p>
    Descripcion: {$especieFiltros[0]->descripcionsp}
</p>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col"> Descripcion del ejemplar </th>
                        
                        <th scope="col"> Año de plantación </th>
                        <th scope="col"> Señalizacion </th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $especieFiltros as $especieFiltro}
                    <tr>
                        <td><a href="arboles/{$especieFiltro->id_arbol}">{$especieFiltro->descripcion} </a></td>
                        
                        <td>{$especieFiltro->anio_plantado}</td>
                        <td>{if $especieFiltro->senializado==1} Si {else} No {/if}</td>
                        
                    </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        
    </div>
</div>
{include file="footer.tpl"}