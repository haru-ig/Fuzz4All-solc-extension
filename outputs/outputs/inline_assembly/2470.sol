pragma solidity ^0.8.0;
contract Comp3
{
    uint a;
    constructor(uint _a) {
        a=_a;
    }
    function increamseInline(uint _increase) public{
    uint256 increamse2=a+_increase;
    a=increamse2;
    }
    function decreamseInline(uint _decrease) public{
    uint256 decreamse2=a-_decrease;
    a=decreamse2;
    }
}
