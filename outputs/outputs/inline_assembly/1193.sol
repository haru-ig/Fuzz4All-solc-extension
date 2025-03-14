pragma solidity ^0.8.0;
contract BetterProgram
{
  bytes32 const X = '0';
  bytes32 x;
  function execute() public
  {
    if(x == X)
      x = '2';
  }
}
