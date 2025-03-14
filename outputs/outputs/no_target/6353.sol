pragma solidity ^0.8.0;
contract D {
  uint256 public a;
  function f(uint256 b) public returns (uint8) {

    return(uint8(int(a) / 2)) / 2;
  }
  function f(uint8 a_) public returns (uint8) {

    uint256 a = a_;
    unchecked {
        a = b;
    }
    return(uint8(uint8(a) / 2)) / 2;
  }
}
