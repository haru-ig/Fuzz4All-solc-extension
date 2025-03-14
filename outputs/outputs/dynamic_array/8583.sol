pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiEncodingOptimizationAndEarlierVersionBugReproduction {
    constructor(uint256[] memory _myArray, int256[] memory _nestedInts, int _nestedMax) {}
    function mutatorTest() external {}
}
