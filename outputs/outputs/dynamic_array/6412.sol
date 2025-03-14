pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  uint8 s_i;
  function f() public {
    for(uint32 i=0; i < s.length; s.length = 1) {
      s_i = s;
      s_i /= 2;
      s_i /= 2;
      s_i /= 2;
      s_i /= 2;
    }
  }
}
