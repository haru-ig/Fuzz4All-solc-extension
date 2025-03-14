pragma solidity ^0.8.0;
contract Caller
{
  function callFromOutsideToFallback() public returns (uint) {
    return Mutate.sendAndCall.call(address(this), 1, bytes(""));
  }
