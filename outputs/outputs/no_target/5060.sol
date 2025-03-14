pragma solidity ^0.8.0;
contract C5_bug403317333939 {
  uint88 a = -3;
  function set() public { a -= 1; }
}
contract C1_bug403933906972 {
  function set() external { c();
  } function c() public { }
}
contract C2_bug406420869854 {
  function f() public {}
}
contract C3_bug408295508574 {
  function f() public {}
}
