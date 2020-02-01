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

        //     agregarComentario: function (){
        //         let texto= document.querySelector("#texto-comentario").value;
        //         let puntaje= document.querySelector("#puntaje-comentario").value;
        //         let id_producto = document.querySelector(".id_producto").value;
        //         let id_usuario = document.querySelector(".nombreusuario-id").id;

        //         let data = {
        //             "texto": texto,
        //             "puntaje": puntaje,
        //             "id_producto" : id_producto,
        //             "id_usuario" : id_usuario
        //         };

        //         let urlencoded = encodeURI("api/comentarios")

        //         fetch(urlencoded,{
        //             "method" : "POST",
        //             "mode": 'cors',
        //             "headers": {'Content-Type': 'application/json'},       
        //             "body": JSON.stringify(data)
        //         }).then(response => {
        //             if (!response.ok) { console.log("error"); } else { return response.json()}
        //         })
        //         .then(() =>{
        //             getComentarios();
        //             document.querySelector("#texto-comentario").value = "";
        //             document.querySelector("#puntaje-comentario").value = 5;
        //             console.log("publicado con exito")
        //         })
        //         .catch(error => console.log(error));
        //     }
            
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