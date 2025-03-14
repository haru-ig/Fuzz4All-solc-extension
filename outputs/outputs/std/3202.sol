pragma solidity ^0.8.0;
interface IDoubleArrayStorage {
  function setDoubleAddress(uint256 a, address a_, address b_) external;
  function getDoubleAddress(uint256 a, address a_, address b, address) external view returns(uint256, int256, uint256);
  function doubleAddress(uint256 a, address a_) external view returns (int256);
}
