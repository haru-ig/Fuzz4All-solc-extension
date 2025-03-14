pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidityPointers4 {
  uint256 public immutable constant arraySize = 5;
  uint256[] public immutable array;
  function MutatedSemanticallyEquivalentSolidityPointers4() public {
    uint256 arrayIndex;
    uint256 arrayCount = arraySize;

    for (uint8 i = 0; i <  arrayCount; i++) {
      array[arrayCount - i - 1] = 1;
    }

    for (arrayIndex = 0; arrayIndex < arrayCount; arrayIndex += 1) {
      array[arrayIndex + 1] = 1;
    }
  }
}
