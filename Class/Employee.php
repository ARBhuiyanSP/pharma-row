<?php


class Employee extends Database{


    public $employeeid;
    protected $table =  "inv_employee";



    public function __construct()
    {

        parent::__construct();
        
    }




    public function employee_by_search()
    {

        $column     =   "employeeid";
        $search     =   $this->employeeid;

        $response   =   parent::get_search_data($this->table, $column, $search);
        
        return $response;
        
    }


    public function get_all_employees()
    {
        // , 'division', 'department', 'designation'
        $column     =   ['employeeid', 'name'];
        return parent::get_all_data($this->table, '', $column, 'ASC', 'name');
    }


    public function get_employee_info()
    {
        $where  =   [
            'employeeid'    =>  $this->employeeid
        ];
        $column     =   ['employeeid', 'name', 'division', 'department', 'designation'];
        return parent::get_data($this->table, $where, $column);
    }


}


?>