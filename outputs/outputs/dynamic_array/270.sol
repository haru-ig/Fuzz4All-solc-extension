pragma solidity ^0.8.0;
contract C9 {
    uint256[] public a;
    constructor(uint256 x, uint256 y) public {
        uint256 n = x;
        for(uint256 i = 0 ; i < n ; i = n >> 1) {
            a.push(i);
        }
    }
    function f(uint256 i, uint256 x, uint256 y) public {
      uint256 acc = 0;
      for(uint256 i = 0 ; i < 1 ; i = 100) {
        acc = acc * x + a[i];
      }
    }
}
