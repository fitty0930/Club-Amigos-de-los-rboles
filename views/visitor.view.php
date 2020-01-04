<?php
    require_once('libs/Smarty.class.php');

    class VisitorView {

        private $smarty;
        
        public function __construct(){

            $this->smarty = new Smarty();
            $this->smarty->assign('basehref', BASE_URL);
            
        }

        public function showTrees($arboles=NULL){ // mostrarArboles
            $this->smarty->assign('arboles', $arboles);
            $this->smarty->display('templates/showTrees.tpl');
        }

        public function showTreeDetail($arbol=NULL){ // detalle del arbol
            $this->smarty->assign('arbol', $arbol);
            $this->smarty->display('templates/showTree.tpl');
        }
    }
