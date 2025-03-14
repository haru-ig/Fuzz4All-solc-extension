pragma solidity ^0.8.0;
interface IBytes4BytesArray {
  function doAdd2(bytes1 a, bytes calldata b, uint256 b_length, bytes calldata c, uint256 c_length) external;
}
