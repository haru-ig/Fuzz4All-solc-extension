pragma solidity ^0.8.0;
contract MutatedInterface
{
  uint256 public modifiedFallbackValue;

  function fallback() public {

    require(fallbackValue < 2, "Fallback contract called too often");
    fallbackValue += 10;
  }

  modifier onlyLowLevelCallPayable() {

    require(msg.value == 6, "Only sending Ether that matches the fallback function signature");
    _;
  }

  function payableFallback() public onlyLowLevelCallPayable {





    modifiedFallbackValue = 11;
  }
}
