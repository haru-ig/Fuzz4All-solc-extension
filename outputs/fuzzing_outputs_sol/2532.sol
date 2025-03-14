pragma solidity ^0.8.0;
contract MutateStorageInterface
{
  uint256 public storageValue;
  function fallback() public payable {
    storageValue += 5;
  }
  function increaseValue(uint256 amt) public {
    storageValue += amt;
  }
  function increaseValue2() public {
    storageValue += 42;
  }
}
contract PayableFallbackInterface
{
  uint256 public fallbackValue;
  function fallback() payable public {
    fallbackValue += 5;
  }
  function payableFallback() public {
    fallbackValue += 6;
  }
}
