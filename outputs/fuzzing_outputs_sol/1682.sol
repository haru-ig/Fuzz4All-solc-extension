pragma solidity ^0.8.0;
contract MutatedFallback {
  function _fallback(address _caller, uint256 n) public view {
    (uint256)(_caller.call{value:n}());
  }
}
