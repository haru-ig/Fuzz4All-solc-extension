pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  address a;
  uint256 a_;
  uint256 y;
  uint256 c;
  uint256 xprev;
  uint256 d;
  uint256 t;
  constructor (uint256 b, uint256 y, uint256 c) public {
    y = 1 + c;
    xprev = y;
    d = 10*2 + 10;
    t = b;
    c = 1;
    a = tx.origin;
    a_ = y - y;
    x = 1 + xprev;
  }
}
