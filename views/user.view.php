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
            $this->smarty->display('templates/showSpecies.tpl');
        }

        public function showSpecieEditor($especie=NULL){
            $this->smarty->assign('tituloPagina','Editar Especie');
            $this->smarty->assign('especie', $especie);
            $this->smarty->display('templates/showSpecieEditor.tpl');
        }
    }