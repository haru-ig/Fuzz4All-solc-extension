pragma solidity ^0.8.0;
contract Contract
{
  function fallback() public payable isFallback() {}

  function isFallback() public pure returns (bool) {
    return false;
  }
}
