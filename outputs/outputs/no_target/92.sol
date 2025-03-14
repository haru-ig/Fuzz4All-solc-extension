pragma solidity ^0.8.0;
interface IERC223Receiver {
    function onERC223Received(address tokenAddress, uint256 tokenId, address from, bytes memory data) external returns (bytes4);
  }
  interface IERC223 {
    function approve(address to, uint256 id) external;
    function configure(address to, uint256 id) external;
    function queryApproval(address owner, uint256 id) external view returns (address operator);
    function configure(address to, uint256 id) public;
  }
