pragma solidity ^0.8.0;
interface IBytes2AddressStorage {
  function setBytes2Address(uint256 a, bytes2 a_) external;
  function getBytes2Address(uint256 a) external view returns (bytes2);
}

pragma solidity ^0.8.0;
interface IBytes2UintStorage {
  function setBytes2Uint(uint256 a, bytes2 a_) external;
  function getBytes2Uint(uint256 a) external view returns (bytes2);
}
