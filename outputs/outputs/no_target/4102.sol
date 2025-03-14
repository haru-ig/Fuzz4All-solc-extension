pragma solidity ^0.8.0;
contract S3 {
  uint256 internal constant s3_internal = 0xfa5510000;
  uint256 public s3;
  function m() internal returns (uint256) { return s3 = s3_internal; }
  function p(uint x) internal pure returns (uint256) { return s3 = s3_internal; }
}
