pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV2 {
    function f(uint256 x) public pure {
      uint256 y;
      unchecked {
        y = (x + 1 + 2) * 2 + (x + 2)*x;
      }
      y = y + 2;
      y = y * x + 3;
      y = y * 2 + 1 * x * 2 + x;
    }
}
