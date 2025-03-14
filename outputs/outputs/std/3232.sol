pragma solidity ^0.8.0;
interface IBytes4MemoryArray {
  function doAdd(bytes20 a, address memory b, uint256 b_length) external;
  function doMul(bytes4 a, address memory b, uint256 b_length) external;
  function doDiv(uint256 a, uint256 b, uint256 b_length) external;
}
