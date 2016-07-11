<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/11/2016
 * Time: 2:45 PM
 */

namespace framework\libs\DB;


class mysqli
{
    private $mysqli;
    function connect($dbInfo){
        extract($dbInfo);
        $this->mysqli=new mysqli($DB_HOST,$DB_USER,$DB_PASSWORD,$DB_NAME);
    }
}