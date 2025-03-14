pragma solidity ^0.8.0;
contract Semantics_inline2_mutator {
  uint256 public constant constant5;
  uint256 public constant constant6;
  uint256 public constant constant7;
  function f() internal view {
  }
  function g() internal pure {
  }
  function h() external pure {
  }
  function i() public pure {
  }
  function j() public {
    constant6 = constant6 * 2;
    constant7 = g() + h() + i();
  }
}<jupyter_output><empty_output>
