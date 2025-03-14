pragma solidity ^0.8.0;
contract Caller {
  uint x;
  function foo() public pure returns (uint) {
    return foo();
  }
  function recv() public {
    x = 20;
  }
}
