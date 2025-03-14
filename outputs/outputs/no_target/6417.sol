pragma solidity ^0.8.0;
contract modifiedD {
  function f(uint16 a) public returns (uint16) {
    return f(a % 2);
  }
}
