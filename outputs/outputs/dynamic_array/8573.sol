pragma solidity ^0.8.0;
contract MutatorWithoutNestedCallDataArrayAbiEncodingOptimizationAndEarlierVersionBugReproduction {
    constructor(int256[] memory _myArray, uint256[] memory _nestedInts, uint _nestedMax) {}
    function mutatorTest() external {}
}
