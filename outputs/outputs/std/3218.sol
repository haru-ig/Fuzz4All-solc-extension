pragma solidity ^0.8.0;
interface IBytesArrayStorage {

  function doAppend(bytes3 a, bytes3 b) external;
  function doRemove(bytes3 a) external returns(uint256);
  function doUpdate(bytes3 a, bytes3 b, bytes3 b_) external;
  function doGet(...) external returns(bytes3);
}
