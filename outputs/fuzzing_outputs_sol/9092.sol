pragma solidity ^0.8.0;
contract SecondFallback {
  function badCall(address target, uint i, bytes32[6] memory b) public returns (bytes memory) {
    return new bytes(0);
  }
}
