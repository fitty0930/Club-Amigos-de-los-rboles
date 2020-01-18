{include 'templates/header.tpl'}  
    <div class="container">
    <h3> Especies </h3>
        <ul class="list-group">
            {foreach $especies as $especie} 
                <li class="list-group-item">
                <a>{$especie->nombre}</a>
                    <a href="borrarespecie/{$especie->id_especie}" class="badge badge-danger text-wrap" style="width: 6rem;"> Borrar </a>
                    <a class="badge badge-warning text-wrap" style="width: 6rem;" href="editordeespecie/{$especie->id_especie}"> Modificar </a>
                </li>
                
            {/foreach}
        </ul>

        
        <h2> Formulario para agregar nuevas especies </h2>
        <div class="form-group">
            <form action="nuevaespecie" method="POST">
                <label>Nombre</label>
                <input class="form-control" type="text" name="nombre">
                <label>Descripcion </label>
                <input class="form-control" type="text" name="descripcion">
                <br>
                <button type="submit" class="btn btn-primary"> Agregar </button>
            </form>
        </div>
        
    </div>
{include 'templates/footer.tpl'} 