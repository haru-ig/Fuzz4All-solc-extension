pragma solidity ^0.8.0;
contract c {
  using uint8 for uint8;
  uint8 [] s;
  function f() public {
    uint i = 0;
    while (i < s.length) {
      s[i] *= 2;
      i += 1;
    }
  }
}
