pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function g(uint256 k) public returns(uint256) {
      uint256 n = x;
      uint256 l = 1;
      while(n < y) {
        n = x + 1;
        l *= 2;
        while(n < y+1)
          {
            n = 1 - (l^n);
            l*=2;
          }
      }
      uint256 j = 0;
      while(k > 0)
      {
        k = k/2;
        ++j;
      }
      uint256 r = x;
      uint256 q = 3;
      while (2*q <= j) {
        r = r + x*y*r;
        q*=2;
      }
      return n*q/2 + r;
    }
    function i(uint256 z) public returns(uint256) {
      uint256 b = 0;
      while (1!= z) {
        z = z / x + x*y*z / (2*x) - z + y;
        b = b * 3 + 1;
      }
      b = 1 / b - 1;
      return b;
    }
}
