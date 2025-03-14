pragma solidity ^0.8.0;
contract SemanticalEquiv17
{
  uint x;
  void public payable() pure public {
    x += 1;
  }
  function f1() view returns (uint) public pure {
    return x;
  }
}
