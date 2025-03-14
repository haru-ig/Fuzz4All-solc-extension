pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  uint8 [] t;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(i=0; s.length!= 0; ++i) {
      s[i] /= 2;
      s_i = s[i];
      t.push(s[i]);
    }
  }
}
