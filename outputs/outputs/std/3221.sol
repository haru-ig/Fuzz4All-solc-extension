pragma solidity ^0.8.0;
interface IBytes4BytesArray {
  function doAppend(uint256 a, bytes4 calldata b, bytes calldata b_length) external;
  function doRemove(uint256 a, bytes4 calldata b, bytes calldata b_length) external returns(bool);
  function doUpdate(uint256 a, bytes4 calldata b, bytes calldata b_) external;
  function doGet(uint256 a, bytes4 calldata b, bytes calldata b_length) external returns(bool);
}
