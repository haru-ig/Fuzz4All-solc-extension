pragma solidity ^0.8.0;
contract MutatedFallbackMutatedFallback
{
  uint public fallbackValue;
  modifier onlyFallback
  {
    assert(msg.data.length > 0);
    _;
  }

  function mutation() external view returns (bool)
  {
    fallbackValue += 2;
    _;
  }
}
