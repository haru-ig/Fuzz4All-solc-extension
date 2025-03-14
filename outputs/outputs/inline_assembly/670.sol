pragma solidity ^0.8.0;
contract Mutator {
    constructor() public {}
    function testMethod(uint256[510000] memory d) public returns (uint256[510000] memory) {
        d[10] = 99;
        return d;
    }
}
