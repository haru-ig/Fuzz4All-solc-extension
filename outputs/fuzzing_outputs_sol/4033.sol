pragma solidity ^0.8.0;
contract MutantFallback {
  uint256 constant public value = 3;
  function myFallback(address recipient, uint256 value, bytes memory data) internal {
  require(msg.value == value, "Value mismatch");
  require(msg.sender!= recipient, "Self transfer");
  require(keccak256(abi.encodePacked(data)) == keccak256(abi.encodePacked("fallback")) || msg.sender!= address(this), "Fallback mismatch");
}
}
