pragma solidity ^0.8.0;
contract P6 {
  uint internal x;
  uint internal y;
  uint public f1;

  function g() internal returns (uint, uint) { return (x * 2, y * 2); }
}
