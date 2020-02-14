<?php
    
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
            $query=$this->db->prepare("SELECT arbol.id_arbol, arbol.id_especie, arbol.descripcion, arbol.latitud, arbol.longitud, arbol.anio_plantado, arbol.senializado, especie.nombre, especie.descripcion AS descripcionsp FROM arbol JOIN especie ON arbol.id_especie = especie.id_especie");
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        public function getTreesFilter(){
            $query=$this->db->prepare("SELECT arbol.id_arbol, arbol.id_especie, arbol.descripcion, arbol.latitud, arbol.longitud, arbol.anio_plantado, arbol.senializado, especie.nombre, especie.descripcion AS descripcionsp FROM arbol JOIN especie ON arbol.id_especie = especie.id_especie GROUP BY id_especie");
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        public function getTreesExt(){
            $query=$this->db->prepare("SELECT arbol.id_arbol, arbol.id_especie, arbol.descripcion, arbol.latitud, arbol.longitud, arbol.anio_plantado, arbol.senializado, especie.nombre, especie.descripcion AS descripcionsp FROM arbol JOIN especie ON arbol.id_especie = especie.id_especie GROUP BY id_especie HAVING COUNT(especie.nombre)<10");
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        public function getTree($id_arbol){
            $query=$this->db->prepare('SELECT arbol.id_arbol, arbol.id_especie, arbol.descripcion, arbol.latitud, arbol.longitud, arbol.anio_plantado, arbol.senializado, especie.nombre, especie.descripcion AS descripcionsp  FROM arbol JOIN especie ON arbol.id_especie=especie.id_especie WHERE arbol.id_arbol=?');
            $query->execute([$id_arbol]);
            return $query->fetch(PDO::FETCH_OBJ);
        }

        public function addTree($id_especie, $descripcion, $latitud, $longitud, $anio_plantado, $senializado){
            $query=$this->db->prepare('INSERT INTO arbol(id_especie, descripcion, latitud, longitud, anio_plantado, senializado) VALUES(?,?,?,?,?,?)');
            $query->execute([$id_especie, $descripcion, $latitud, $longitud, $anio_plantado, $senializado]);
        }

        public function updateTree($id_arbol, $id_especie, $descripcion, $latitud, $longitud, $anio_plantado, $senializado){// actualizar($id_arbol, $id_especie, $descripcion, $latitud, $longitud, $señalizado)
            $query=$this->db->prepare('UPDATE arbol SET id_especie=?, descripcion=?, latitud=?, longitud=?, anio_plantado=?, senializado=? WHERE id_arbol=?');
            $query->execute([$id_especie, $descripcion, $latitud, $longitud, $anio_plantado, $senializado,$id_arbol]);
        }

        public function deleteTree($id_arbol){
            $query=$this->db->prepare('DELETE FROM arbol WHERE id_arbol=?');
            $query->execute([$id_arbol]);
        }

        public function getSpecieFilter($id_especie){
            $query = $this->db->prepare('SELECT arbol.id_arbol, arbol.id_especie, arbol.descripcion, arbol.latitud, arbol.longitud, arbol.anio_plantado, arbol.senializado, especie.nombre, especie.descripcion AS descripcionsp  FROM arbol JOIN especie ON arbol.id_especie=especie.id_especie WHERE arbol.id_especie=?');
            $query->execute([$id_especie]);
            return $query->fetchAll(PDO::FETCH_OBJ);
        }
        // apisector

        public function guardarArbol($id_especie, $descripcion, $latitud, $longitud, $anio_plantado, $senializado){
            $query=$this->db->prepare('INSERT INTO arbol(id_especie, descripcion, latitud, longitud, anio_plantado, senializado) VALUES(?,?,?,?,?,?)');
            $query->execute([$id_especie, $descripcion, $latitud, $longitud, $anio_plantado, $senializado]);
            return $this->db->lastInsertId();
            // return last insert id
        }
    }