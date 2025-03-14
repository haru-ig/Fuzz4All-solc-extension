pragma solidity ^0.8.0;
contract Array {
  uint256 a;
  uint256[] b;
  function add(uint256 a, uint256 b) external {
    b.transfer(a);
  }
  function multiply(uint256 a, uint256 b) external {
    a.transfer(b.mul(10));
  }
}
