pragma solidity ^0.8.0;
library L {
  function f(uint256 m, uint256 n) external pure {
    assembly {
      m := 15
      n := 93
    }
  }
  function g(uint256 m) external pure returns (uint256 n) {
    assembly {
      m := 15
      n := m
    }
  }
  function h(uint256 m) public pure {
    assembly {
      m := 15
      n := n
    }
  }
  function i(uint256 m) pure public {
    assembly {
      m := 15
      n := m
    }
  }
  function j(uint256 m) public {
    assembly {
      m := 15
      n := m
    }
  }
  function k(uint256 m) external returns (uint256 n) {
    assembly {
      m := 15
      n := m
    }
  }
}
