pragma solidity ^0.8.0;
contract C {
  uint constant public a=0x10;
  function M() public pure {
    uint b=a+a;
    assert(b==0x20);
  }
}
