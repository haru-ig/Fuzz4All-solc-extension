pragma solidity ^0.8.0;
contract SemanticMutationExample {
  function fallback(uint) external payable {
    assembly {
      sstore(66, mload(20) + i80(add(mload(20), 1)))
    }
  }
}
