pragma solidity ^0.8.0;
contract Modifications2{
  uint256 public a;
  uint256 public b;
  function Modification2(uint256 s1, uint256 s2) public {
    uint256 x = s1 - s2;
    a = s1 + x + s2;
    b = s1;
  }
}
