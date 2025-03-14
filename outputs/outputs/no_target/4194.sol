pragma solidity ^0.8.0;
contract P11 {
  function f() pure public returns (uint256 x) {
    return x/1;
  }
}
contract P1 {
  function h(uint x) pure public returns (uint256 y) {
    if (x == 1) {
      return h();
    } else {
      return 1;
    }
  }
  function g() pure public returns (uint256) {
    return h(1);
  }
  function f(uint x) pure public returns (uint256 x2, uint256 y) {
    if (x == 1) {
      x2 = x;
      y = 1;
      return x2;
    } else {
      x2 = x-1;
      y = 2;
      return x2, x2;
    }
  }
}
