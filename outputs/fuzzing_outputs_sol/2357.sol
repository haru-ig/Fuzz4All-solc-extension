pragma solidity ^0.8.0;
contract LowLevelCaller {
  function lowLevelCall(uint256 someNumber) public pure returns (uint256) {
    return someNumber;
  }
  fallback () external pure {}
  receive () external pure {}
}
