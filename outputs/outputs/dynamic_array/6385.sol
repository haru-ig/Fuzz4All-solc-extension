pragma solidity ^0.8.0;
contract c {
  uint8 [255] s;
  function f() public {
    uint32 i;
    for (i = 0; i < s.length+1; i++) {
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}
