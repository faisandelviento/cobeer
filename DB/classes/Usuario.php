<?php
class Usuario {
    public $usuario;

    function __construct($usuario = array()) {
        include __DIR__.'/queryBuilders/SimpleQuery.php';
        $this->SimpleQuery = new SimpleQuery($usuario,"usuario");
    }

    function list(){
        return $this->SimpleQuery->list();
    }
    function insert(){
        return $this->SimpleQuery->insert();
    }
    function update(){
        return $this->SimpleQuery->update();
    }
    function delete(){
        return $this->SimpleQuery->delete();
    }
}
?>