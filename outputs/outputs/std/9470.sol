pragma solidity ^0.8.0;
contract Contract4 {
    uint[10] myarray;
    uint arraysize;
    uint arraymax;
    function setarray(uint newarraysize)public{
        arraysize = newarraysize;
        arraymax = newarraysize;
        for (uint i = 0; i < arraysize; i++){
            myarray[i] = 0;
        }
    }
    function getarraysize()public view returns(uint){
        arraysize;
    }
    function getarraymax()public view returns(uint){
        arraymax;
    }
    function getarrat(uint ind)public view returns(uint){
        ind;
    }
    function set(uint ind, uint newval)public{
        ind;
        newval;
    }
    function mset(uint ind, uint newval)public{
        ind;
        newval;
    }
    function add(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function rm(uint ind)public{
        ind;
    }
    function sub(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function mul(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function div(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function max(uint ind)public{
        ind;
    }
    function min(uint ind)public{
        ind;
    }
}

pragma solidity ^0.8.0;
contract Contract5 where bytes32  is Contract3, bytes20{
    uint[20] public myarray;
    uint arraysize;
    uint arraymax;
    function setarray(uint newarraysize)public{
        arraysize = newarraysize;
        arraymax = newarraysize;
        for (uint i = 0; i < arraysize; i++){
            myarray[i] = 0;
        }
    }
    function getarraysize()public view returns(uint){
        arraysize;
    }
    function getarraymax()public view returns(uint){
        arraymax;
    }
    function getarrat(uint ind)public view returns(uint){
        ind;
    }
    function set(uint ind, uint newval)public{
        ind;
        newval;
    }
    function mset(uint ind, uint newval)public{
        ind;
        newval;
    }
    function add(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function rm(uint ind)public{
        ind;
    }
    function sub(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function mul(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function div(uint ind, uint newVal)public{
        ind;
        newVal;
    }
    function max(uint ind)public{
        ind;
    }
    function min(uint ind;
    {
        address(this).value(1 ether
