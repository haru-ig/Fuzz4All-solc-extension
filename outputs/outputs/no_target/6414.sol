pragma solidity ^0.8.0;
contract modifiedA {
  function f(uint8 a) public returns (uint8) {
    return f(a % 2);
  }
}
