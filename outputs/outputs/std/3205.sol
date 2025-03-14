pragma solidity ^0.8.0;
interface IBytesStorage {
  function doSetBytes(uint256 b, bytes memory b_, bytes memory c_) external;
  function doGetBytes(uint256 a, bytes2 memory a_, bytes2 memory b) external view returns(uint256, uint256, bytes2, uint256, uint256, bytes2);
}
