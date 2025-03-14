pragma solidity ^0.8.0;
contract MutatedBlock5Mutation101 {
    uint internal x;
    uint internal y;
    constructor () {
        x = 14;
        y = 22;
    }
    function test10(uint x, uint y) public pure {
        x += 22;
        y += 88;
    }
    function test14() public pure {
        x += 88;
        TestB testb = new TestB();
        x += testb.getValue();
        y += testb.getValue() + 3;
    }
    function test20() public pure returns (uint) {
        x
