pragma solidity ^0.8.0;
contract SecondFallback {
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    return new bytes(0);
  }
}
