pragma solidity ^0.8.0;
contract D {
    uint public y;
    uint public w;
    uint public x = 56;
    uint public z = 2;

    function f(uint a,uint w, uint ky) external view returns (uint) {
      w = w*2;
      x = x+1;
      x = x-x*2;
      z = 2 + 4 * z;
      w = w*8;
      ky = 10000;
      return x;
    }

    function g(uint w, uint ky) external returns (uint) {
      x = x * 2;
      z = 2 + 4 * x;
      x = x + x;
      y = 0;
      w = w*2;
      x = x+1;

      return x + 10;
    }
}
