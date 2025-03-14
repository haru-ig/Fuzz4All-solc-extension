pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  uint256 xprev;
  uint256 y;
  uint256 a;
  uint256 t;
  uint256 d;
  address a_0;

  uint256  b_a = 1;
  uint256  t_a;
  uint256  c;
  uint256 b_a_2;
  uint256 a_2;

  constructor(uint _d, uint _y, uint _xprev, uint _t, uint _c, uint _t_a, uint _a_2, uint _c_init) public{
    x = 1 + _d;
    y = 1 + _y;
    c = 1 + _c;
    a = msg.sender;
    xprev = _xprev;
    t = _t;
    d = _d;
    t_a = _t_a;
    a_2 = _a_2;
    c_init = _c_init;
    a_0 = a;
    b_a_2 = 1;
  }
}
