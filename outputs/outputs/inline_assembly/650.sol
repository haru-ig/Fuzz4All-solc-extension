pragma solidity ^0.8.0;
contract Mutator2 {
    constructor() public {}
    function testMethod(int v) public pure {
        v = v - 1;
    }
}
