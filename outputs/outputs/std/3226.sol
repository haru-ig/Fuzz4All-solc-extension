pragma solidity ^0.8.0;
interface IBytes4BytesArrayWithOverflow {
  function doAdd(uint256 a, bytes1 b, uint256 b_length) external;
  function doOverflow(uint256 a, bytes calldata b, uint256 b_length) external;
}
