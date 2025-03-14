pragma solidity ^0.8.0;
contract NoFallbackInterface
{
  uint256 public fallbackValue;
  function fallback() public {
    fallbackValue += 5;
  }
  function payableFallback() public payable {
    fallbackValue += 6;
  }
}
