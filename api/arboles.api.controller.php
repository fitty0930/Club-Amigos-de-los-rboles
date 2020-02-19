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

    public function obtenerArbolesGBSpecie($params=NULL){
        $arboles = $this->modelArbol->getTreesFilter(); // arboles es un array
        $this->JSONView->response($arboles, 200);
    }

    public function obtenerArbolesGBExtintion($params=NULL){
        $arboles = $this->modelArbol->getTreesExt(); // arboles es un array
        $this->JSONView->response($arboles, 200);
    }

    public function obtenerArbolesFilterDD($params=NULL){
        $id_especie = $params[':ID'];
        $arboles = $this->modelArbol->getTreesDD($id_especie); // arboles es un array
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

    public function borrarArbol($params=NULL){
        $id_arbol = $params[':ID'];
        $arbol=$this->modelArbol->getTree($id_arbol);
        if($arbol){
        $this->modelArbol->deleteTree($id_arbol);
        $this->JSONView->response('Su especimen se eliminó con éxito', 200);
        }
        else{
        $this->viewJSON->response("El especimen con el id: $id_arbol no existe", 404);
        }
    }

    public function editarArbol($params=NULL){
        $id_arbol = $params[':ID'];
        $data = $this->getData();
        $arbol=$this->modelArbol->getTree($id_arbol);
        if($arbol){
        $this->modelArbol->updateTree($id_arbol, $data->id_especie , $data->descripcion, $data->latitud, $data->longitud, $data->anio_plantado, $data->senializado);
        $this->JSONView->response('Su especimen se eliminó con éxito', 200);
        }
        else{
        $this->viewJSON->response("El especimen con el id: $id_arbol no existe", 404);
        }
    }
}