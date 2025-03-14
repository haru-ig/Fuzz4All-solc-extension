pragma solidity ^0.8.0;
contract E5
{
    uint x;
    constructor(){
       x = 42;
    }
    function subtract(uint _y) public returns (uint){
       return x - _y;
    }
    function multiply(uint _y) public returns (uint){
       return x - _y;
    }
}
