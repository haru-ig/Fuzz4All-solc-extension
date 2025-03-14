pragma solidity ^0.8.0;
contract SemanticMutationExample {
  uint256 constant constantValue = 5;
  function fallback() external payable {


    assembly {
      let x := mload(0x40)
      if lt(mload(0x40), constantValue) {
        let t := mload(0x0)
        mstore(t, add(x, t))
        mstore(0x40, x)
      }
    }
  }
}
