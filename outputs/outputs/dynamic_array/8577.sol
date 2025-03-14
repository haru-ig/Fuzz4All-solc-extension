pragma solidity ^0.8.0;
contract MutatorWithoutNestedCallDataArrayAbiEncodingOptimizationAndEarlierVersionBug {
    constructor(int256[] memory _myArray1, int256[] memory _emptyArray) {}
    function mutatorTest() external {}
}
