pragma solidity ^0.8.0;
contract Comp1
{
    uint public a;
    constructor(uint _a) {
        a=_a;
    }

    modifier check_init {
        require(a!= 0,"init is true");
        _;
    }

    modifier isnt_empty(uint _a) {
        require(_a!=0,"invalid input a cannot be 0");
        _;
    }
    function increamse(uint _increase) public isnt_empty(a) check_init {
        a+=_increase;
    }
}

contract Comp2
{
    uint a;
    constructor(uint _a) {
        a=_a;
    }
    function increamse(uint _increase) public {
        a.add(_increase);
    }
}

contract Comp3
{
    uint a;
    constructor(uint _a) {
        a=_a;
    }

    modifier check_init {
        require(a!= 0,"init is true");
        _;
    }

    modifier isnt_empty(uint _a) {
        require(_a!=0,"invalid input a cannot be 0");
        _;
    }
    function increamse(uint _increase) public isnt_empty(a) check_init {
        a+=_increase;
    }
}
