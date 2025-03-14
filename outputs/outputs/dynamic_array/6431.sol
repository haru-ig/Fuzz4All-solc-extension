pragma solidity ^0.8.0;
contract c {
  uint8[] u;
  uint8[] v;
  function f() public {
    uint32 i;
    uint8 u_i;
    uint8 v_i;
    for(i=0; u.length!=0; ++i) {
      u[i] /= 2;
      u_i = u[i];
      v.push(u[i]);
    }
  }
}
