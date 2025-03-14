pragma solidity ^0.8.0;
contract P12 {
  function i() pure public returns (uint) {
    uint v;
    assembly { v := mload(0x40) }
    return uint(v) - 1;
  }
}
