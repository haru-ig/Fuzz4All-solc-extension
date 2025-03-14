pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  address a;
  uint256 y;
  uint256 a_;
  uint256 y1;
  uint256 xprev;
  uint256 z;
  uint256 c;
  uint256 xprev1;
  uint256 c_init;
  constructor (uint256 c, uint256 e, uint256 d, uint256 xprev) public {
    y = msg.sender - 1;
    x = 1 + c + d + xprev;
    a = msg.sender;
    a_ = 2 - y + y;
    c_init = c;
    xprev = x;
    z = e;
    y1 = y;
    d = d;
    t = e;
  }
}
