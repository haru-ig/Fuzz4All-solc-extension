pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    uint c;
    uint public x = 2;
    constructor() {
        a = a - 1;
        c = 4;
    }
    function update() public {
        a = a * 2;
        c = a + x;
        x = 3;
        emit Update(a,c,x);
    }
