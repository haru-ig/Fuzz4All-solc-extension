pragma solidity ^0.8.0;
contract c {
  uint8 [] s;
  bytes32 [][] [] s1;
  function f() public {
    uint32 i;
    for (i = 0; i < s.length; i++)
      s1[i].length++;
  }
}
