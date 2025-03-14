pragma solidity ^0.8.0;
interface IBytesArrayStorage {
  function doAppend(uint256 a, bytes3 b) external;
  function doRemove(uint256 a) external returns(bytes3);
  function doUpdate(uint256 a, bytes3 b, bytes3 b_) external;
  function doGet(uint256) external returns(bytes3);
}
