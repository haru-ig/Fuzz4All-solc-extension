pragma solidity ^0.8.0;
contract MutatingFallback {
  function modify(uint num) public returns (uint z) {
    z = num + 1;
    return 0x7FFFFFFF;
  }
}
