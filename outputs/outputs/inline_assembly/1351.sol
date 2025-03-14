pragma solidity ^0.8.0;
contract Mutant8
{
  uint x;
  function f() public payable {
    x = msg.value;
  }
}
