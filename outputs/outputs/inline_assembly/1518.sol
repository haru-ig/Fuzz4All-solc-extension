pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  address a;
  uint256 xprev;
  uint256 xprev1;
  uint256 t;
  uint256 c_init;
  constructor(uint256 x, uint256 t, uint256 a, uint256 a_, uint256 c_init, uint256 xprev, uint256 xprev1) public {
    c_init = c_init;
    c = 1 + a_ - a ;
    a = a;
    x = 1 + 10 + 10*2 + xprev;
    t = t;
    xprev = x;
    xprev1 = xprev;
  }
  function withdraw(address _to, uint _amount) public {
    _to.transfer(_amount);
  }
}
