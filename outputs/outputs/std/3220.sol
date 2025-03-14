pragma solidity ^0.8.0;
interface IBytes2BytesArray {
  function doAppend(uint256 a, bytes calldata b, uint256 b_length) external;
  function doRemove(uint256 a, bytes calldata b, uint256 b_length) external returns(bool);
  function doUpdate(uint256 a, bytes calldata b, bytes calldata b_) external;
  function doGet(uint256 a, bytes calldata b, uint256 b_length) external returns(bool);
}
