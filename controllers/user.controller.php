<?php
    require_once "./models/tree.model.php";
    require_once "./models/species.model.php";
    require_once "./views/visitor.view.php";

    class UserController{
        private $treeModel; 
        private $speciesModel; 
        private $visitorView;

        public function __construct(){
            $this->treeModel = new TreeModel();
            $this->speciesModel = new SpeciesModel();
            $especies=$this->speciesModel->getSpecies();
            $this->visitorView = new VisitorView($especies);
        }

        public function addTree(){
            $id_especie = $_POST['especie']; 
            $descripcion = $_POST['descripcion']; 
            $latitud = $_POST['latitud']; 
            $longitud = $_POST['longitud']; 
            $anio_plantado = $_POST['anio_plantado'];
            $senializado = $_POST['senializado']; 

            if((!empty($id_especie))&&(!empty($descripcion))&&(!empty($latitud))&&(!empty($longitud))&&(!empty($anio_plantado))&&(!empty($senializado))){
                $this->treeModel->addTree($id_especie, $descripcion, $latitud, $longitud, $senializado);
                header("Location: arboles"); // lo pateo a arboles
            }else{
                echo 'eres una grandisima mrd';
            }; 
        }
    }