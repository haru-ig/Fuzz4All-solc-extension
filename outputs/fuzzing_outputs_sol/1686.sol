pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
  function foo() public pure returns (uint256) {
    _;
  }

  function receiveData() public pure returns (uint256 data) {
    return 0;
  }

  fallback() payable {}
}
