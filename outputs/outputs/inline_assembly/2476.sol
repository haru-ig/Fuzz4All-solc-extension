pragma solidity ^0.8.0;
contract Comp1
{
    uint a;
    uint b;
    constructor(uint _a) {
        a=_a;
    }
    function increamse(uint _increase) public {
        b++;
    }
}
