pragma solidity ^0.8.0;
contract Mutator {
    constructor() {}
    function testMethod(int v) public pure {
        int memory oldV = v;
        v = v - 1;
    }
}
