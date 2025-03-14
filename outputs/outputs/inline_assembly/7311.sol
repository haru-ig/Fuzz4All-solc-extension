pragma solidity ^0.8.0;
contract Semantics_inline3 {
  uint256 public constant constant1 = 500;
  uint256 public constant constant2 = 99;
  uint256 public constant constant3 = 300;
  uint256 public constant constant4 = 1000;
  uint256 public constant constant5 = 300;
  uint256 public constant constant6 = 300;
  uint256 public constant constant7 = 300;
  function update(uint256 update1) public {
    constant1 = update1;
    constant2 = update1;
    constant3 = update1;
    constant4 = update1;
    constant5 = update1;
  }
}
contract Semantics_inline4 {
  function update(uint256 update1, uint256 update2, uint256 update3, uint256 update4, uint256 update5, uint256 update6) public {
    constant1 = update1;
    constant2 = update2;
    constant3 = update3;
    constant4 = update4;
    constant5 = update5;
    constant6 = update6;
  }
