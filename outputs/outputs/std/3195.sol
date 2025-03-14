pragma solidity ^0.8.0;
interface IArrayStorage {
  function fill(uint256 a, bytes2 a_, bytes2 b) external;
  function length(uint256 a, bytes2 a_) external view returns (uint256);
  function get(uint256 a, bytes2 a_) external view returns (bytes2);
  function set(uint256 a, bytes2 a_, bytes2 b) external;
  function sortBytes(bytes2 a_) external;
}
