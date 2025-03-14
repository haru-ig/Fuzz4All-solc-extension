pragma solidity ^0.8.0;
interface IIntStorage {
  function doSetInt(uint256 a, int256 a_, int256 b_) external;
  function doGetInt(uint256 a, int256 a_, int256 b) external view returns(int256);
}
