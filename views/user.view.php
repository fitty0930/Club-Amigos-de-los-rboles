<?php
    require_once('libs/Smarty.class.php');

    class UserView {

        private $smarty;
        
        public function __construct($especies){

            $this->smarty = new Smarty();
            $this->smarty->assign('basehref', BASE_URL);
            $this->smarty->assign('especies',$especies);
            
        }

        public function showSpecies($especies=NULL){ // mostrarArboles
            $this->smarty->assign('tituloPagina','Especies');
            $this->smarty->assign('especies', $especies); // se puede obviar
            $this->smarty->display('templates/showSpecies.tpl');
        }
    }