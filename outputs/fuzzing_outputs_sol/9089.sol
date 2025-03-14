pragma solidity ^0.8.0;
contract FirstFallback {
  function badCall(address target, uint i, bytes32[2] memory b) public returns (bytes memory) {
    return new bytes(0);
  }
}
