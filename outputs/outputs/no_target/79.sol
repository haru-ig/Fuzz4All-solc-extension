pragma solidity ^0.8.0;
interface IERC223ApprovalListener {
  event Approval(address indexed owner, address indexed approved, uint256 indexed id);
  event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
  function onERC223Received(address operator, address from, address to, uint256 id, bytes calldata data) external returns (bytes4) ;
}
