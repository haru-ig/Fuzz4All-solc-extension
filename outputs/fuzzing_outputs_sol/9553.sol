pragma solidity ^0.8.0;
contract Caller {
  function getReturnValues() public {
    uint a = 0;
    Caller x;
    uint b = 3;
    uint c = 2;
    uint d = 4;
    a = x.bar();
  }
}
