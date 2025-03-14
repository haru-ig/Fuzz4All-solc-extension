pragma solidity ^0.8.0;
interface IDoubleArrayStorage {
  function setDouble(bytes2 a, uintb a_, uintb b_) external;
  function getDouble(bytes2 a, uintb a_, uintb b) external view returns (uintb);
}
