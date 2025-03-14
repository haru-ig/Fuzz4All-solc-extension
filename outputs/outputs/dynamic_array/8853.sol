pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers4 {
  uint[][] public mutatedArrayofArrays28;
  uint[][] private readNonConstStorageInPreviousGeneration;
  function updateDynamicArrays() public {
    mutatedArrayofArrays28[0][0] = 99;
    mutatedArrayofArrays28[0][1] = 66;
    mutatedArrayofArrays28[0][2] = 33;
    mutatedArrayofArrays28[1][0] = 999;
    mutatedArrayofArrays28[1][1] = 666;
    mutatedArrayofArrays28[1][2] = 333;
    mutatedArrayofArrays28[2][0] = 9999;
    mutatedArrayofArrays28[2][1] = 6666;
    mutatedArrayofArrays28[2][2] = 3333;
  }
}
contract SemanticallyEquivalentSolidityPointers1 {
  uint[][] public mutatedArrayofArrays22;
}
