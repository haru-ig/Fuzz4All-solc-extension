pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    uint8 s_i;
    for(i=0; s.length > 0; i--) {
      uint8 t_i;
      uint8 d_i;
      s[i] /= 2;
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
      t_i = s[i];
      i++;
      d_i = s[t_i];
      s[i] /= 2;
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
      t_i = s[i];
      i++;
      d_i = s[t_i];
      s[i] /= 2;
      s_i = s[i];
      s[i] /= 2;
      s[i] /= 2;
      s[i] /= 2;
      t
