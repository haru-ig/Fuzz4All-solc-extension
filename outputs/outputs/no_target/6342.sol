pragma solidity ^0.8.0;
contract D is D {
  function f(uint8 a) public returns (uint256) {
    a = a / 2;
    return a;
  }
}
