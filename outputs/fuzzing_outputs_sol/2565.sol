pragma solidity ^0.8.0;
contract MutatedFallbackMutatedFallbackSemanticallyEquivalant
{
  uint public fallbackValue = 0;
  function mutation() public {
    fallbackValue += 2;
  }
}
