"use strict"
document.addEventListener("DOMContentLoaded", function(){
    let app = new Vue({
        el: "#arboles-api",
        data: {
            cargando: false,
            arboles: []
        },
         
        methods: {
        //     borrarComentario: function (event, id_comentario){
        //     let urlencoded = encodeURI("api/comentarios/"+id_comentario)
        //     fetch(urlencoded,{
        //         "method" : "DELETE"
        //     })
        //     .then(response => {
        //         if (!response.ok) { console.log("error"); } else { return response.json()}})
        //     .then( () => {
        //         getComentarios();
        //         console.log("Borrado exitoso");
        //     })
        //     .catch(error => console.log(error));
        //     },

            agregarEspecimen: function (){
                let descripcion= document.querySelector("#descripcion-arbol").value;
                let latitud= document.querySelector("#latitud-arbol").value;
                let longitud = document.querySelector("#longitud-arbol").value;
                let anio_plantado = document.querySelector("#anioplantado-arbol").value;
                let especie = document.querySelector("#especie-arbol").value;
                let senializacion = document.querySelector("#senializado-arbol").value;

                let data = {
                    "id_especie": especie,
                    "descripcion": descripcion,
                    "latitud": latitud,
                    "longitud" : longitud,
                    "anio_plantado" : anio_plantado,
                    "senializado": senializacion
                };
                console.log(data);
                let urlencoded = encodeURI("api/agregararboles")

                fetch(urlencoded,{
                    "method" : "POST",
                    "mode": 'cors',
                    "headers": {'Content-Type': 'application/json'},       
                    "body": JSON.stringify(data)
                }).then(response => {
                    if (!response.ok) { console.log("error"); } else { return response.json()}
                })
                .then(() =>{
                    getArboles();
                    document.querySelector("#descripcion-arbol").value="";
                    document.querySelector("#latitud-arbol").value="";
                    document.querySelector("#longitud-arbol").value="";
                    document.querySelector("#anioplantado-arbol").value="";
                    document.querySelector("#especie-arbol").value="";
                    document.querySelector("#senializado-arbol").value="";
                    console.log("publicado con exito")
                })
                .catch(error => console.log(error));
            }
            
        },
    }
    );
        
        document.addEventListener("load", getArboles());
        
        function getArboles(){
            app.cargando = true;
            let urlencoded = encodeURI("api/arboles")
            fetch(urlencoded)
            .then(response => {
                if (!response.ok) { console.log("error"); } else {return response.json()}})
            .then(arboles => {
                app.arboles = arboles;
                app.cargando = false;
            })
            .catch(error => console.log(error));
        };
        

        setInterval(function(){ getArboles();} , 60000);
});