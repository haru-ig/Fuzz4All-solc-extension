pragma solidity ^0.8.0;
contract C {
  uint public x = 10;
  uint public immutable y = 10;
  constructor(uint y) public {
    assert(y >= x);
  }
}
