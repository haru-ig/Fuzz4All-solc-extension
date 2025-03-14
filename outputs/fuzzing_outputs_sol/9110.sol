pragma solidity ^0.8.0;
contract BadCallerFallback {
  function badCall(address target, uint i, bytes32[6] memory b) public payable returns (bool) {
    return true;
  }
 Fallback() external payable { }
}
