pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  uint256 x_mutant;
  uint256 y;
  uint256 y_mutant;
  uint256 c;
  uint256 xprev;
  uint256 d;
  uint256 t;
  uint256 xprev1;
  uint256 c_init;
  constructor (uint256 t, uint256 c, uint256 d, uint256 xprev) public {
    y = 1 + c;

    if (c_init == 1) {
      x = c + 10 + 10*2 + xprev;
    }else{
      x = (y - y) + 1;
    }
    c_init = c;
    a = msg.sender;
    a_ = y - y;
    xprev = x;
    y_mutant = y;
    d = d;
    t = t;
  }

  function mutant() public view returns(uint256) {
    return x < 10;
  }
}
