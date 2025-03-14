pragma solidity ^0.8.0;
contract C9 {
    constructor(uint256 x, uint256 y) {}
    function f(uint256 i, uint256 x, uint256 y) public {
      uint256 acc = 0;
      for(uint256 i = 0 ; i < 1 ; i = 100) {
        acc = acc * x + c(i, x);
      }
      for(uint256 i = 0 ; i < 1 ; i = 100) {
        acc = acc * x + c(i, x);
      }
      for(uint256 i = 0 ; i < 1 ; i = 100) {
        acc = acc * x + c(i, x);
      }
    }
    function c(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }
}
