pragma solidity ^0.8.0;
contract Test2 {
  function badCall(uint i, uint j) pure public returns (bool) {
    int cond;
    int isEqual = i == 17;
    int isLessThan = 17 <= j;
    cond = isLessThan || isEqual;
    return cond;
  }
}
