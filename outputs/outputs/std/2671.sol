pragma solidity ^0.8.0;
interface IERC1271{
   function isApprovedOrOwner(address proxy, uint256) external view returns (bool);
   function approve(address proxy, uint256) external;
   function getApproved(address proxy) external view returns (uint256);
}
