<?php
require_once("models/tree.model.php");
require_once("./api/json.view.php");



class ApiController{
     
    
    private $modelArbol; 
    private $JSONView; 
    private $data;

    public function __construct(){
        
        $this->JSONView = new JSONView();
        $this->modelArbol= new TreeModel();
        $this->data = file_get_contents("php://input");
    }
    private function getData() {
        return json_decode($this->data);
    }

    public function obtenerArboles($params=NULL){
        $arboles = $this->modelArbol->getTrees(); // arboles es un array
        $this->JSONView->response($arboles, 200);
    }
    
    public function agregarArbol($params=NULL){
        
        $data = $this->getData();
        // var_dump($data);
        $arbol = $this->modelArbol->guardarArbol($data->id_especie , $data->descripcion, $data->latitud, $data->longitud, $data->anio_plantado, $data->senializado);
        if($arbol){
            $this->JSONView->response('Su especimen se cargó con éxito', 200);
        }else{
            $this->JSONView->response('Su especimen no se pudo cargar, por favor reintente mas tarde', 500);
        }
    }
}