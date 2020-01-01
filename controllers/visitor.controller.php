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
            $this->visitorView = new VisitorView();
        }

        public function showTrees($params=NULL){
            $this->visitorView->showTrees();
        }
    }
