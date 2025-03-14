pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller2 {
  uint i = 0;
  receive() external payable {}
  function semanticallyEquivalentCaller2() external {
    ++i;
    uint a = 13;
    uint b = 13;
    i = a;
    i = b;
    i = i + 1;
    uint c = 17;
    uint d = 17;
    i = c;
    i = d;
    i = i + 1;
  }
  function semanticallyEquivalentCaller() external {
    ++i;
    uint c = 17;
    uint d = 17;
    i = c;
    i = d;
    i = i + 1;
  }
}
