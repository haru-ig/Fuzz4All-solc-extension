pragma solidity ^0.8.0;
interface IBytes4BytesArray {
  function doAdd(uint256 a, bytes1 b, uint256 b_length) external;
  function doMul(uint256 a, bytes calldata b, uint256 b_length) external;
  function doDiv(uint256 a, bytes calldata b, uint256 b_length) external;
}
