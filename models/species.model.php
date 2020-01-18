<?php
    // hace el login
    class SpeciesModel{
        private $db;

        public function __construct(){
            $this->db=$this->Connect();
            
        }

        private function Connect(){ // hace la conexion
            return new PDO('mysql:host=localhost;'
            .'dbname=db_cala; charset=utf8' 
            , 'root', '');// el primer root es el usuario y el segundo (vacio) la contraseña
        }

        public function getSpecies(){
            $query= $this->db->prepare('SELECT * FROM especie');
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        public function getSpecie($id_especie){
            $query=$this->db->prepare('SELECT especie.id_especie, especie.nombre, especie.descripcion FROM especie WHERE especie.id_especie=?');
            $query->execute([$id_especie]);
            return $query->fetch(PDO::FETCH_OBJ);
        }
        
        public function addSpecie($nombre, $descipcion){// agregarEspecie()
            $query=$this->db->prepare('INSERT INTO especie(nombre,descripcion) VALUES(?,?)');
            $query->execute([$nombre,$descipcion]);
        }

        public function deleteSpecie($id_especie){
            $query=$this->db->prepare('DELETE FROM especie WHERE id_especie=?');
            $query->execute([$id_especie]);
        }

        public function updateSpecie($id_especie,$nombre, $descripcion){
            $query=$this->db->prepare('UPDATE especie SET nombre=?, descripcion=? WHERE id_especie=?');
            $query->execute([$nombre, $descripcion, $id_especie]);
        }
    }
