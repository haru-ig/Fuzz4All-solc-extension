pragma solidity ^0.8.0;

contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24 {
    mapping(uint=>uint) public calldataArray;
    constructor (uint[] memory calldata_) public {
      uint arr = calldata_.length;
      for (uint i = 0; i < arr; ++i) {
        calldataArray[arr] = 0;
      }
    }
}
