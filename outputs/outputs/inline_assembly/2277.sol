pragma solidity ^0.8.0;
contract Mutation
{
    uint a;
    uint b;
    constructor() {
        uint b = a + 1;
        a = b;
        b = a + 2;
        a = b;
    }
    function update() public {
        a = 2;
        a++;
        a = 3;
    }
}
