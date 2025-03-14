pragma solidity ^0.8.0;
interface IERC346 {
  function supportsInterface(bytes4 interfaceId) external view returns (bool);
  function transfer(address to, uint256 id) external;
}
