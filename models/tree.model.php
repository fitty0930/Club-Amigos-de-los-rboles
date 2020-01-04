<?php
    // hace el login
    class TreeModel{
        private $db;

        public function __construct(){
            $this->db=$this->Connect();
            
        }

        private function Connect(){ // hace la conexion
            return new PDO('mysql:host=localhost;'
            .'dbname=db_cala; charset=utf8' 
            , 'root', '');// el primer root es el usuario y el segundo (vacio) la contraseña
        }

        public function getTrees(){
            $query=$this->db->prepare("SELECT * FROM arbol JOIN especie ON arbol.id_especie = especie.id_especie");
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        public function getTree($id_arbol){
            $query=$this->db->prepare('SELECT arbol.id_arbol, arbol.descripcion, arbol.anio_plantado, especie.nombre, especie.descripcion AS id_especie  FROM arbol JOIN especie ON arbol.id_especie=especie.id_especie WHERE arbol.id_arbol=?');
            $query->execute([$id_arbol]);
            return $query->fetch(PDO::FETCH_OBJ);
        }
    }