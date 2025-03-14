pragma solidity ^0.8.0;
interface IAddressStorage {
  function setAddress(uint256 a, address a_, address b_) external;
  function getAddress(uint256 a, address a_, address b) external view returns (address);
}
