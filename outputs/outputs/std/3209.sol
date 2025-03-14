pragma solidity ^0.8.0;
interface IBytesStorage {
  function doSetBytes(uint256 a, bytes3 a_, bytes3 b_) external;
  function doGetBytes(uint256 a, bytes3 a_, bytes3 b) external view returns(bytes3);
}
