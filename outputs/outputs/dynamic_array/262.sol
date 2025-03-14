pragma solidity ^0.8.0;
contract C9 {
    struct T { uint256 a; }
    constructor(uint256 x) {}
    function a(uint256 i, T storage x) public {
      uint256 sum;
      for(uint256 i = 0 ; i < 1 ; i = 101) {
        sum = sum + x.a + c(i, x.a);
      }
      for(uint256 i = 0 ; i < 1 ; i = 101) {
        sum = sum + x.a + c(i, x.a);
      }
    }
    function c(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }
}
