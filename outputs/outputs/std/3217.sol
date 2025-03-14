pragma solidity ^0.8.0;
interface IBytesArrayStorage {
  function setBytes3ToStringSafe(uint256 a, bytes3 b) external;
  function getBytes3ToStringSafe(uint256 a)
    external
    view
    returns (bytes3);
}
