pragma solidity ^0.8.0;
contract Mutant {
  address a;
  uint256 a_;
  uint256 x;
  uint256 c;
  uint256 xprev;
  uint256 d;
  uint256 t;
  uint256 xprev1;
  uint256 c_init;
  constructor (uint256 t, uint256 c, uint256 d, uint256 xprev) public {
    y = 1 + c;
    x = 1 + 10 + 10*2 + xprev;
    c_init = c;
    a = msg.sender;
    a_ = y - y;
    xprev = x;
    d = d;
    t = t;
  }
}



pragma solidity ^0.8.0;

contract Mutant {
  uint256 x;
  uint256 c;
  uint256 d;
  uint256 t;
  uint256 xprev;
  uint256 a;
  uint256 a_;
  uint256 y;
  uint256 xprev1;
  uint256 c_init;
  constructor (uint256 t, uint256 c, uint256 d, uint256 xprev, address a_) public {
    y = 1 + c;
    x = 1 + 10 + 10*2 + xprev;
    c_init = c;
    a = a_;
    a_ = y - y;
    xprev = x;
    d = d;
    t = t;
  }
}
