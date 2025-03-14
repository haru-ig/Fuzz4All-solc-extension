pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    constructor() {
        a = a + 1;
    }
    function update() public {
        a++;
        a = a + 2;
    }
}
