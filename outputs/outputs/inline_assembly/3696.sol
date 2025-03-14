pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
  function f() private view {
    uint256 a = 2;
    uint256 b = 3;
    uint256 c = a + b;
    b = a + b;
  }
  function g() view returns (uint256 _g) {
    uint256 a = 1;
    uint256 b = 2;
    uint256 c = a + b;
    b = a + b;
    _g = a + b;
  }
}
