pragma solidity ^0.8.0;
contrct Mutation
{
    uint public a;
    constructor() {
        a = a * 10;
    }
    function update() public {
        a = a + 10;
    }
}
