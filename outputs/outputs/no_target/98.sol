pragma solidity ^0.8.0;
contract IERC2967 {
  function supportsInterface(bytes4 interfaceId) external view returns (bool);
  function getAssetProxy(string calldata asset) external view returns (address);
  function getOperatorProxy(address account) external view returns (address);
}
