pragma solidity ^0.8.0;
contract C1 {
  using ModByTwosModByTwos for uint256;
  function f(uint32 x) public pure returns (uint8) {
    return ModByTwosModByTwos.mod(uint256(x));
  }
}
