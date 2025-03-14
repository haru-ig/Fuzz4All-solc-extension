pragma solidity ^0.8.0;
contract P5{
  uint internal x;
  function h() internal(x) returns (uint) { return x * 2; }
}
