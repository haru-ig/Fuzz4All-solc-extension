pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays5 {
  uint [] public arrayofArrays;
  modifier checkSize {
    calldata size;
    address storageaddr;
    require(size.size() == 6);
    assembly {
    storageaddr := storage()
    }
    size += storageaddr;
    size += storage;
    size += 7;
    calldata size2;
    require(size == size2);
    _;
  }
  function arrayofArrays2() checkSize {
    arrayofArrays.push(4);
    arrayofArrays.push(5);
    arrayofArrays.push(6);
  }
}
