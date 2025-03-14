pragma solidity ^0.8.0;
contract Mutation3
{
    uint public a;
    bytes32 public test;
    bytes32 public test2;
    constructor() {
        a = a - 1;
        test = "TEST12733";
        test2 = test;
    }
    function update() public {
        a = 10;
        test = "TEST1286";
        test2 = "TEST2";
    }
}
