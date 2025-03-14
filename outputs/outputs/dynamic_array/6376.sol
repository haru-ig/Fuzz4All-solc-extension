pragma solidity ^0.8.0;
contract c {
  bytes1 s1;
  bytes [] s2;
  function f() public {
    uint32 i;
    for (i = 0; i < s2.length; i++)
      s2[i] = s1[s2[i]];
  }
}
