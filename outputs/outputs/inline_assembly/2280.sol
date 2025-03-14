pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    constructor() {
        a = 51;
    }
    function update() public {
        a = a + 1;
        a = a + 1;
        a = a + 2;
    }
}
