pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  uint256 a;
  uint256 a_;
  uint256 y;
  uint256 t;
  uint256 xprev;
  uint256 c_init;
  constructor (uint256 t, uint256 c, uint256 xprev) public {
    y = 1 + c;
    x = xprev;
    c_init = c;
    a = msg.sender;
    if (y == 0) {
      throw;
    }
    a_ = y - y + x;
    xprev = x;
    t = t;
  }
}
