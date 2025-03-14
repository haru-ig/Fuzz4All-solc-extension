pragma solidity ^0.8.0;
interface IUintStorage {
  function doSetUint(uint256 a, uint256 a_) external;
  function doGetUint(uint256 a) external view returns(uint256);
}
