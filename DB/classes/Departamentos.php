<?php
include_once __DIR__ . '/queryBuilders/SimpleQuery.php';
class Departamentos
{
    public $departamento;

    function __construct($departamento = array())
    {
        $this->SimpleQuery = new SimpleQuery($departamento, "departamento");
    }

    function list()
    {
        return $this->SimpleQuery->list();
    }
    function insert()
    {
        return $this->SimpleQuery->insert();
    }
    function update()
    {
        return $this->SimpleQuery->update();
    }
    function delete()
    {
        return $this->SimpleQuery->delete();
    }
}
?>