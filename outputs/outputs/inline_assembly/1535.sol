pragma solidity ^0.8.0;
contract Mutant1 {
  uint256 x;
  uint256 d;
  uint256 xprev;
  uint256 t;
  uint[3] memory o1;
  uint[3] memory o2;
  constructor (uint256 c, uint xprev,uint256 d,uint256 t) public {
    uint256 z1 = c + xprev;
    uint256 z2 = 1 + 10 - 10*2;
    o1[0] = 1;
    o1[1] = c;
    o1[2] = 10;
    o2[0] = 1;
    o2[1] = 10 + z1;
    o2[2] = 10;
    d = d;
    x = 10 + 100 + d;
    xprev = x;
    t = t;
  }
}
