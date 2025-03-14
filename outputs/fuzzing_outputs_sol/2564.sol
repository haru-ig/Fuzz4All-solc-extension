pragma solidity ^0.8.0;
contract MutatedFallbackMutatedFallback
{
  uint public fallbackValue;
  function mutation() public {
    fallbackValue += 2;
  }
}
