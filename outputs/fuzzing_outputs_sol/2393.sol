pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller2 {
  uint i = 0;
  receive() external payable {}
  function semanticallyEquivalentCaller() external {
    uint a = 15;
    uint b = 15;
    i = a;
    i = b;
    i = i + 1;
    uint c = 16;
    uint d = 16;
    i = c;
    i = d;
    i = i + 1;
  }
}
