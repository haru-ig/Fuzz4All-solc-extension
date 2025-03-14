pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint s_i;
    uint32 i;
    for(i=0; s.length > 0; i--) {
      s[i] /= 2;
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}
