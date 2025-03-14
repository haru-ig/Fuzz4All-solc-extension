pragma solidity ^0.8.0;
contract Mutation
{
    uint a;
    constructor() {
        uint b = a + 1;
        a = b;
    }
    function update() public {
        a + 2;
        a = a + 3;
        a = a + 4;
        a = a + 5;
    }
}
