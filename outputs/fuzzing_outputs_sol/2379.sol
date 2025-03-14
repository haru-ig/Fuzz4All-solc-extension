pragma solidity ^0.8.0;
contract CallerMutated {
  uint i = 0;
  receive () external payable {
    ++i;
  }
  function mutatedWithoutReturn() external returns(uint) {
    ++i;
    uint a = 13;
    i = a;
    i = i + 1;
    return i;
  }
  function mutatedWithReturn() external {
    ++i;
    uint a = 13;
    i = a;
    uint b = i + 1;
    uint c = 17;
    i = c;
    i = b;
    uint d = i + 1;
    i = d;
    i = i + 1;
    uint e = 22;
  }
}
