<div class="col-md-8">
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
                    {foreach $arboles as $arbol}
                    <tr>
                        <td><a href="arboles/{$arbol->id_arbol}">{$arbol->descripcion} </a></td>
                        <td>{$arbol->nombre}</td>
                        <td>{$arbol->anio_plantado}</td>
                        <td>{if $arbol->senializado==1} Si {else} No {/if}</td>
                        
                    </tr>
                    {/foreach}
                </tbody>
            </table>
</div>