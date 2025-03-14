pragma solidity ^0.8.0;
interface IMemoryStorage {
  function doSetByteArray(bytes3 a_, bytes memory b_) external;
  function doGetByteArray(bytes3 a) external view returns(bytes memory);
  function doGetMethod(uint256 a) external view returns(uint8);
}
