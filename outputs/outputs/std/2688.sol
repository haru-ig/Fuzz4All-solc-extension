pragma solidity ^0.8.0;
interface IERC777 { function setApprovalForAll(address operator, bool approved) external; function isApprovedForAll(address owner, address operator) external view returns (bool); }
