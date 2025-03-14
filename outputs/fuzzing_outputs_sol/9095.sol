pragma solidity ^0.8.0;
contract FirstFallback {
  function badCall(address target, bytes32[6] memory b) public returns (bytes memory) {
    b;
    return new bytes(0);
  }
}
