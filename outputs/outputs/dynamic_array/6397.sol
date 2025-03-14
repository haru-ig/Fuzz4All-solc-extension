pragma solidity ^0.8.0;
contract c {
  uint16 [] s;
  function f() public {
    uint32 i;
    uint16 s_i;
    for(i=0; s.length > 0; i--) {
      s[i] *= 10;
      s_i = s[i];
      s[i] *= 10;
      s[i] *= 10;
      s[i] *= 10;
    }
  }
}
