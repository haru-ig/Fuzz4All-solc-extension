pragma solidity ^0.8.0;

contract GC {
  constructor() public {}
  function f(uint256[] memory prev, uint[] memory s, uint slen) public {
      uint[] memory next;
      for (uint i = 0; i < slen; i++) {
          prev[i] = s[i];
      }
      for (uint p = 0; p < prev.length; p++) {
          prev[p] = prev[p];
      }
      prev[2] = s[0];
      prev[1] = s[1];
  }
  function ff(uint[] memory x) public pure {
      uint[] memory y;
      for (uint i = 0; i < x.length; i++) {
          uint256 z = x[i];
          y.push(z);
      }
      G g;
      g.f(x, y, y.length);


  }
}
