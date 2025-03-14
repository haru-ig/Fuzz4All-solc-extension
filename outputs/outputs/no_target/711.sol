pragma solidity ^0.8.0;
contract A {
  function f() public pure returns (uint256) {
    return uint256(uint1024(uint8(1))) * 32 * 32;
  }
}
