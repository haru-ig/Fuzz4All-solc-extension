pragma solidity ^0.8.0;
contract K {
  function g() public pure returns (uint8 x) {
    x = 1;
  }
}
pragma solidity ^0.8.6;
contract C {
  constructor() public {}
  function f() public pure {
    uint8 x;
  }
  function o2() public pure {
    uint8 x;
    while (x < 43210) {
      x = x - 1;
    }
  }
  function o3() public pure {
    uint8 x;
    uint8 y;
    uint8 z;
    while (true) {
      x = x + 7;
      y = x + 15;
      z = x - y;

      z = y - x;
    }
  }
}
