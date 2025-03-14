pragma solidity ^0.8.0;
contract LowLevelFallback
{
  uint public fallbackValue;
  function lowLevelCall() public {
    fallbackValue += 4;
  }
}
