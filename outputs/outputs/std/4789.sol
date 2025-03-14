pragma solidity ^0.8.0;
contract G {
  uint8 private constant N = 10000;
  uint8 private s0;
  uint8[] public p;
  function g() public {
    s0 = p[N-1]; p.push(uint8(s0));
    for(uint i=N;i>0;i--) {
      p[N-1] = uint8(uint8(s0)^uint8(s0)^uint8(p[i/2]));
      p.push(uint8(uint8(s0)^uint8(p[i/2])));
    }
  }
}
