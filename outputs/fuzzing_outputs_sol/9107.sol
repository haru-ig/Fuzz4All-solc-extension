pragma solidity ^0.8.0;
contract BadCaller {
  function badCall(address target, uint i, bytes32[6] memory b) public pure returns (bool) {
    return true;
  }
  fallback() public { }
}
