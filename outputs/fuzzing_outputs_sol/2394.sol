pragma solidity ^0.8.0;
contract SemanticallyEquivalentCaller {
  uint public i;
  string storage s = "13";
  uint[] memory piValues = [13,13,14,4];
  uint i2 = 0;
  receive() external payable {}
  function semanticallyEquivalentCaller() external {
    ++i2;
    uint a = 13;
    uint b = 13;
    ++i;
    ++i2;
    i = a;
    i = b;
    i = i + 1;
    ++i;
    ++i2;
    ++i;
    ++i2;
    ++i;
    ++i2;
    ++i;
  }
}
