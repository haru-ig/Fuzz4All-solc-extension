pragma solidity ^0.8.0;
contract Comp1
{
    uint a;
    constructor() {
        a=0;
    }
    function increamse(uint _increase) public {
        a += _increase;
    }
}
