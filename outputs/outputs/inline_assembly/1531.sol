pragma solidity ^0.8.0;
contract Mutant {
  uint256 a;
  uint256 _a;
  address _a_;
  uint256 c_init;

  constructor (uint256 a, uint256 _a_, uint256 d, uint256 xprev) public {
    c_init = 3 + _a_;
    a = 1 + c_init;
    _a_ = 1 + c_init;
    a_ = 1;
    y = 1 + c;
    x = 1 + 10 + 10*2 + xprev;
    d = d;
  }

  function change(uint x, uint y2, uint t2) public {
    c_init = (t2 + x - 2*t2)/(y2+x-c_init);
    a = 4+y2;
  }






}
