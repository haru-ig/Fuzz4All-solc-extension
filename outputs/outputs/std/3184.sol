pragma solidity ^0.8.0;
interface IBytes2DoubleStorage {
  function setBytes2Double(uint256 a, bytes2 a_, bytes2 b_) external;
  function getBytes2Double(uint256 a, bytes2 a_, bytes2 b) external view returns (bytes2);
}
