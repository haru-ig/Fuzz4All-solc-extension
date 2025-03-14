pragma solidity ^0.8.0;
contract S4 {
  uint256 internal constant s4_internal = 0xb5ad000000000000;
  uint256 internal public s4_internal;
  uint256 public s5;
  function g() public payable returns (uint256) {
    s5 = s4_internal + s3;
    s4_internal = s4;
    return s5;
  }
}
