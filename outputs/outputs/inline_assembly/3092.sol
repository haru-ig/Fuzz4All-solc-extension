pragma solidity ^0.8.0;
contract C {
  constructor(uint _a) public {
    uint256 x;
    x = uint(_a);
    x += 1;
    x *= uint32x01000000000000000000000000000000000000000000000000000000000000000000;
  }
}
