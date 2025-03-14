pragma solidity ^0.8.0;
contract c {
  uint8 [3200] memory m1;
  uint8 [] memory m2;
  function f() public {
    uint32 i;
    for (i = 0; i < m2.length; i++)
      m2[i] = m1[m2[i]];
  }
}
