pragma solidity ^0.8.0;
contract c {
  uint8[] public s;
  function f() public {
    uint32 i;
    for (i = 0; i < s.length; i++) {
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}

contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    for (i = 0; i < s.length; i++) {
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
    for (i = 0; i < 10; i++) {
      s[s.length - i - 1] /= 2;
      s[s.length - i - 1] /= 2;
      s[s.length - i - 1] /= 2;
    }
  }
}
