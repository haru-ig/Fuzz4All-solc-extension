pragma solidity ^0.8.0;
contract Comp2
{
    uint a;
    constructor(uint _a) {
        a=_a;
    }
    function increamse(uint _increase) public {
        a++;
    }
    function decreamse(uint _decrease) public {
        a--;
    }
}
