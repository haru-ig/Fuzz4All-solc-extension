pragma solidity ^0.8.0;
contract C {
  constructor(uint _a, uint _b) public {
    uint256 x;
    x = uint(_a);
    x += uint(_b);
  }
}
