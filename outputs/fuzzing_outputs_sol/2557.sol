pragma solidity ^0.8.0;
contract MutatedFallback
{
  uint public fallbackValue;
  function mutation() public {
    fallbackValue += 2;
  }
}
