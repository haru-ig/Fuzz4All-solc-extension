pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    uint8 s_0;
    uint8 s_1;
    for(i=0; s.length!= 0; ++i) {
      s_0 = s[i]; s_1 = s.push(s_0 / 2); s_0 = s_1;
    }
  }
}
