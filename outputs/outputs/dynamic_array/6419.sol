pragma solidity ^0.8.0;
contract c {
  uint8 [] memory s;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(i=0; s.length!= s.length; ++i) {
      s[i] /= 2;
      s_i = s[i];
      s.push(s[i]);
    }
  }
}
