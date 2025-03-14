pragma solidity ^0.8.0;
contract Caller {
  function goodCall(address target, uint i, bytes32[6] memory b) public returns (bool) {
    return true;
  }
  fallback() external payable {}
}
