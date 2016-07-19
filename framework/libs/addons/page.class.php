<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 7/14/2016
 * Time: 9:18 AM
 */

namespace framework\libs\addons;


class page
{
    private $total;             //条目总数
    private $pageSize;          //每页显示数量
    private $totalPage;         //总共分页数量
    private $totalPagination;   //动态显示的总页码数
    private $pageNow;           //当前页码
    private $nav;               //最终传递给页面的显示代码
    public $limit;              //数据库的分页

    function __construct($total,$pageSize=PAGE_SIZE){
        $this->total=$total;
        $this->pageSize=$pageSize;
        $this->totalPage=ceil($total/$pageSize);
        $this->pageNow=$this->getPageNow();
        $this->totalPagination=PAGE_OFFSET*2+1;
        $this->limit="LIMIT ".($this->pageNow-1)*$this->pageSize." , ".$this->pageSize;
        $this->url=$this->getUrl();

    }
    function showPage(){
        $this->nav="<ul class='pagination'>";
        $this->pageInitial();
        $this->pageNumber();
        $this->pageFinal();
        $this->nav.="</ul>";
        return $this->nav;
    }
    function getUrl(){
        $url=$_SERVER["REQUEST_URI"];
        $par=parse_url($url);           //$par是一个数组 url地址存在path中，地址后的参数存在query中（没有则无此值）
        if(isset($par)){
            if(isset($par["query"])) {
                parse_str($par['query'], $query);
                if (isset($query["page"])) {
                    unset($query["page"]);
                }
                $url = $par["path"] . "?" . http_build_query($query);
            }else{
                $url=$par["path"] . "?";
            }
        }
        return $url;

    }
    function pageInitial(){
        if(($this->totalPage>$this->totalPagination)&&($this->pageNow>PAGE_OFFSET+1)){
            $this->nav.="<li><a href='{$this->url}&page=1'>First</a></li>";
            $this->nav.="<li><a href='{$this->url}&page=".($this->pageNow-PAGE_OFFSET-1)."'>&laquo;</a></li>";
        }else{
            $this->nav.="<li><a href='{$this->url}&page=1'>First</a></li>";
            $this->nav.="<li class='disabled'><a>&laquo;</a></li>";
        }
    }
    function pageFinal(){
        if(($this->totalPage>$this->totalPagination)&&($this->pageNow+PAGE_OFFSET<$this->totalPage)){
            $this->nav.="<li><a href='{$this->url}&page=".($this->pageNow+PAGE_OFFSET+1)."'>&raquo;</a></li>";
            $this->nav.="<li><a href='{$this->url}&page={$this->totalPage}'>Last</a></li>";
        }else{
            $this->nav.="<li class='disabled'><a>&raquo;</a></li>";
            $this->nav.="<li><a href='{$this->url}&page={$this->totalPage}'>Last</a></li>";
        }
    }

    function pageNumber(){
        if($this->pageNow>PAGE_OFFSET){
            $start=($this->pageNow - PAGE_OFFSET);
            if(($this->pageNow+PAGE_OFFSET)>$this->totalPage){
                $end=$this->totalPage;
            }else{
                $end=$this->pageNow+PAGE_OFFSET;
            }
        }else{
            $start=1;
            if(($this->pageNow+PAGE_OFFSET)>$this->totalPage){
                $end=$this->totalPage;
            }else{
                $end=$this->pageNow+PAGE_OFFSET;
            }
        }
        if($this->totalPagination>$this->totalPage){
            $start=1;
            $end=$this->totalPage;
        }
        if($start>1)$this->nav.="<li>...</li>";
        for($i=$start;$i<=$end;$i++){
            if($i==$this->pageNow){
                $this->nav.="<li class='active'><a href='{$this->url}&page={$i}'>$i</a></li>";
            }else{
                $this->nav.="<li><a href='{$this->url}&page={$i}'>$i</a></li>";
            }
        }
        if($end<$this->totalPage)$this->nav.="<li>...</li>";
    }

    /**
     * 获取当前的页码并判断合法性
     * @return float|int
     */
    function getPageNow(){
        if(!empty($_GET["page"])){
            if($_GET["page"]>0){
                if($_GET["page"]>$this->totalPage){
                    return $this->totalPage;
                }else{
                    return $_GET["page"];
                }
            }else{
                return 1;
            }
        }else{
            return 1;
        }
    }
}