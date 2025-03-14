pragma solidity ^0.8.0;

contract Comp0
{
    uint public a;
    constructor(uint _a){
        a = _a;
    }

    function increamse(uint _increase) public {
        a = a + _increase;
    }
}

contract Mutator1
{

    uint public a;
    constructor(uint _a){
        a = _a;
    }

    function increamse(uint _increase) public {
        a = a + _increase;
    }

    function decreamse(uint _decrease) public {
        a = a - _decrease;
    }
}

contract Comp1
{
    uint public a ;
    constructor(uint _a){
        a = _a;
    }

    function increamse(uint _increase) public {
        a = _increase + a;
    }

    function decreamse(uint _decrease) public {
        a = a - _decrease;
    }
}
