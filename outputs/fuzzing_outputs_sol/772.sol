pragma solidity ^0.8.0;
interface IERC20 {
  function balanceOf(address who) external view returns (uint256);
  function allowance(address owner,address spender) external view returns (uint256);
  function approve(address spender,uint256 amount) external returns (bool);
  function transfer(address to, uint256 amount) external returns (bool);
}
interface IERC721 {
  function ownerOf(uint256 tokenId) external view returns (address);
  function safeTransferFrom(address from, address to, uint256 tokenId) external;
  function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) external;
  function exists(uint256 tokenId) external view returns (bool);
  function approve(address to, uint256 tokenId) external;
  function setApprovalForAll(address operator, bool _approved) external;
  function isApprovedForAll(address owner, address operator) external view returns (bool);
  function transferFrom(address from, address to, uint256 tokenId) external;
  function totalSupply() external view returns (uint256);
  function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
  function tokenByIndex(uint256 index) external view returns (uint256);
}
contract Caller {
  fallback() public payable {}
  function() public payable {}
}
