pragma solidity ^0.8.0;
interface IDoubleBytesStorage {
  function setDoubleBytes(uint256 a, bytes2 a_, bytes2 b_) external;
  function getDoubleBytes(uint256 a, bytes2 a_, bytes2 b) external view returns (bytes2);
}
