pragma solidity ^0.8.0;
interface IERC223 {
  function supportsInterface(bytes4 interfaceId) external view returns (bool);
  function approve(address to, uint256 id) external;
  function queryApproval(address owner, uint256 id) external view returns (address operator);
  function approveForAll(address operator, bool _approved) external;
}
