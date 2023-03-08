<?php
class Recurso
{
    public $recurso;

    function __construct($recurso = array())
    {
        include __DIR__ . '/queryBuilders/SimpleQuery.php';
        $this->SimpleQuery = new SimpleQuery($recurso, "recurso");
    }

    function list()
    {
        return $this->SimpleQuery->list();
    }

    // function listWith()
    // {
    //     return $this->SimpleQuery->list();
    // }
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