pragma solidity ^0.8.0;
contract E16H {
  uint x = 0xabababab;
  function f() {
    for (uint i = 0; i < x; i++) {}
  }
}
