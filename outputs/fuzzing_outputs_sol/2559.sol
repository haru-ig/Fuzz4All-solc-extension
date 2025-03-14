pragma solidity ^0.8.0;
contract LowLevelMutator
{
  uint public override fallbackValue;
  function lowLevelFallback() external {
    fallbackValue += 50;
  }
}
