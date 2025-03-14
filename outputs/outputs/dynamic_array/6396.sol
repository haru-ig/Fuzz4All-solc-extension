pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(uint8[] memory s2 = new  uint8[](22); ; i++) {
      s2.push(2*s[s_i++]);
      if(i > 63) {
        break;
      }
    }
  }
}
