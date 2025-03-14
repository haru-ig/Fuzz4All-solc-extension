pragma solidity ^0.8.0;
contract MutatedWithFallback
{
  function mutationWithFallbackValue() public returns (uint) {
    fallbackValue += 2;
    return fallbackValue;
  }
}
