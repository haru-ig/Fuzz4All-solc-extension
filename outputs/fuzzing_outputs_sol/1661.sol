pragma solidity ^0.8.0;
contract D {
  uint public x = 0xd;
  fallback() public payable {
    uint y = x + 1;
  }
}
contract E {
  uint public x = 0xe;

  constructor(uint x) public {
    require(x>=10, "invalid x");
  }

  receive() {
    x += 1;
  }
}
