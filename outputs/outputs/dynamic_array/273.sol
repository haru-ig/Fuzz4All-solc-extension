pragma solidity ^0.8.0;
contract C10 {
    constructor(uint256 x, uint256 y) {}
    function f(uint256 i, uint256 x, uint256 y) public {
      uint256 acc = 0;
      for(uint256 i = 0 ; i < 2 ; i = 100) {
        acc = acc * x + c(i, x);
      }
      for(uint256 i = 0 ; i < 2 ; i = 100) {
        acc = acc * x + c(i, x);
      }
      for(uint256 i = 0 ; i < 2 ; i = 100) {
        acc = acc * x + c(i, x);
      }
    }
    function c(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }
}
pragma solidity ^0.8.0;
contract C {
    function S() public {
        uint256 a1 = 1, a2, a3, a4;
        for (uint256 i = 2 ; i >= 0 ; i--) {
            (a2,,) = x.f.value(2e18)(1,2,{x: 1, y: a1, z: 0});
            a3 += a2;
            (a2,,) = x.f.value(2e18)(1,2,{x: 2, y: a1, z: 1});
            a4 += a2;
            (a2,,) = x.f.value(2e18)(1,2,{x: 3, y: a1, z: 0
