pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  uint x;
  uint y;
  constructor () {
    x = 128;
    y = 128;
  }

  function () public pure {
    assembly {
      mstore(0, x)
      mstore(128, y)
      swap(0, 128)
    }
  }

  function swap(uint r0, uint r1) private pure {
    assembly {
      r1 := mload(r0)
      r0 := mload(r1)

      r1_r0 := r1 * r0
      r0_r1 := r0 * r1

      r0 := r1_r0
      r1 := r0_r1
      r0_r1 := r0
    }
  }
}
