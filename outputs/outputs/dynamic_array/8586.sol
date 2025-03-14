pragma solidity ^0.8.0;
contract NotTheBestMutatorWithoutNestedCallDataArrayAbiEncodingOptimizationAndNestedCalldataArrayAbiReencodingSizeValidationAndEarlierVersionBugReproduction {
    constructor(int256[] storage _myArray, uint256[] memory _nestedInts, uint _nestedMax) {}
    function mutatorTest() external {}
}
