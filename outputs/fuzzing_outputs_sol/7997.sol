pragma solidity ^0.8.0;
contract SemanticsConflicting
{
  function call() public pure returns(bool) { return true; }
}
