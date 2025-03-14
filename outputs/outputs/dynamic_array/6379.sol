pragma solidity ^0.8.0;
contract c {
  uint8 [3200] s1 = new uint8[](3200);
  uint8 [] s2 = new uint8[](5);
  function f() public {
    uint32 i;
    for (i = 0; i < s2.length; i++)
      s2[i] = s1[s2[i]];
  }
}
