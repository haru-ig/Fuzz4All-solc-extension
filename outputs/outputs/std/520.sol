pragma solidity ^0.8.0;
contract Array{
    uint index;
    function add(uint a, uint value) public returns (uint){
        index++;

        return index;
    }
    function findMax(uint[10] _array) public returns (uint){
        return _array.length>0?  _array[0]:999999999;




    }
}
