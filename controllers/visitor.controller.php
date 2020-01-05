<?php
    require_once "./models/tree.model.php";
    require_once "./models/species.model.php";
    require_once "./views/visitor.view.php";

    class VisitorController{
        private $treeModel; 
        private $speciesModel; 
        private $visitorView;

        public function __construct(){
            $this->treeModel = new TreeModel();
            $this->speciesModel = new SpeciesModel();
            $especies=$this->speciesModel->getSpecies();
            $this->visitorView = new VisitorView($especies);
        }

        public function showTrees($params=NULL){
            $arboles = $this->treeModel->getTrees(); // arboles es un array
            $this->visitorView->showTrees($arboles);
        }

        public function showTree($params=NULL){// un arbol individualmente TERMINARLA
            $id_arbol=$params[':ID'];
            $arbol = $this->treeModel->getTree($id_arbol);
            if($arbol){
                $this->visitorView->showTreeDetail($arbol);
            }else{
                // MOSTRAR UN ERROR
                echo "reporten al void of mrd";
            }
        }
    }
