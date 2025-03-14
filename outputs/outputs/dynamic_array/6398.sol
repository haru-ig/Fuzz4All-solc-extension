pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    uint8 s_i;
    s.length = 0;
    for(i=0; s.length > 0; i--) {
      s[i] /= 2;
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
    }
  }
}
