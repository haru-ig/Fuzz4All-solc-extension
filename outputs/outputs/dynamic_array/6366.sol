pragma solidity ^0.8.0;
contract d {
  mapping (uint256 => uint8[10]) sa1;
  mapping (uint256 => uint8[4096]) sa2;
  function f() public { sa2[1][sa1[sa2.length].length-1] = 1; }
}
