pragma solidity ^0.8.0;
contract FallbackCall {
  function badCall(address target, uint i, bytes32 memory b) public returns (bool) {

    return true;
  }
  fallback() external payable { }
}
