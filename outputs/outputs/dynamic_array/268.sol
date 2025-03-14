pragma solidity ^0.8.0;
contract C9 {
    struct T0 { uint256 a; }
    struct T1 { uint256 b; }
    constructor(uint256 x) {}
    function f(uint256 i, T0 memory x) public {
      uint256 sum;
      for(uint256 i = 0 ; i < 1 ; i = 100) {
        sum = sum * x.a + c(i, x.a);
      }
      for(uint256 i = 0 ; i < 1 ; i = 100) {
        sum = sum * x.a + c(i, x.a);
      }
    }
    function c(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }
}
