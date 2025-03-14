pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller3 {
  uint i = 0;
  receive() external payable {}
  function semanticallyEquivalentCaller() external {
    uint a = 1;
    uint b = a;
    uint c = 2;
    uint d = 3;
    uint e = b + 1;
    i = 1;
    i = c;
    i = d;
    i = e;
    i = 1;
  }
 }
