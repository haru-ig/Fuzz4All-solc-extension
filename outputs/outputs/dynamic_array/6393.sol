pragma solidity ^0.8.0;
contract c {
  mapping (uint8 => uint8[]) s;
  function f() public {
    uint32 i;
    uint8[] memory s_i;
    for (i = 0; i < s[0].length; i++) {
      s[0][i] /= 2;
      s_i = s[0][i];
      s[0][i] /= 2;
      s[0][i] /= 2;
    }
  }
}
