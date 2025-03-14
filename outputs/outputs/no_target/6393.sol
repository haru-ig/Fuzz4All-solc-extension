pragma solidity ^0.8.0;
contract originalC {
  function f(uint8 a) public returns (bool) {
    uint8 as_unsigned = a % 2;
    bool res;
    if( as_unsigned > 1) {
      res = true;
    } else {
      res = false;
    }
    return res;
  }
}
