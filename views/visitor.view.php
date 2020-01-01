<?php
    require_once('libs/Smarty.class.php');

    class VisitorView {

        private $smarty;
        
        public function __construct(){

            $this->smarty = new Smarty();
            $this->smarty->assign('basehref', BASE_URL);
            
        }

        public function showTrees(){ // mostrarArboles
            $this->smarty->display('templates/showTrees.tpl');
        }
    }
