pragma solidity ^0.8.0;
interface IBytes2StringStorage {
  function setBytes2String(uint256 a, bytes2 a_, string b_) external;
  function getBytes2String(uint256 a, bytes2 a_, string memory b) external view returns (bytes2 memory);
  function getBytes2String(uint256 a_, bytes2 a) external pure returns (string memory);
}
