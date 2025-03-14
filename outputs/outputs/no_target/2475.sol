pragma solidity ^0.8.0;
contract test {
  address owner;
  event log(uint x);

  constructor() public {
    owner = tx.origin;
  }

  modifier onlyOwner {
    require(tx.origin == owner);
    _;
  }

  function f() public onlyOwner returns(uint) {
    log(1);
    log(2);
    log(3);
    log(4);
    log(5);
    return 0;
  }

  function g() public onlyOwner returns(uint) {
    uint a = 1;
    uint b = a;
    uint c = a + 1;
    uint d = b + 2;
    uint e = c + 0.5000;
    uint f = d + 1.5000;
    f;
    uint g;
    g;
  }
  function h() public onlyOwner returns(uint) {
    uint x = 0;
    uint y = x + 1;
    if (true) {
      uint z = y + 1 + 1;
      return z;
    }
  }
  function i() public onlyOwner returns(uint) {
    uint x = 0;
    uint y = x + x;
    return y;
  }
}
