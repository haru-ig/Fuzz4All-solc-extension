pragma solidity ^0.8.0;
library Math {
  function sqrt(uint x) internal pure returns (uint256 y) {
    uint256 halfY = divRoundUp(x, 2);
    while (y < halfY) {
      y--;
    }
  }

  function divRoundUp(uint a, uint256 b) internal pure returns (uint256) {
    uint256 res = a / b;
    return res == uint256(uint8(a / b))? res : uint256(uint16(a / b)) + 1;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a > b) {
      return b;
    } else {
      return a;
    }
  }
}
