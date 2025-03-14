pragma solidity ^0.8.0;
contract modifiedB {
  function f(uint8 a) public returns (uint8) {
    return f(uint8(a));
  }
}
