pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  function f() public {
    uint32 i;
    for (i = 0; i < s.length; i++)
      s[i]++;
  }
}
