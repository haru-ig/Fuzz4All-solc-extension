pragma solidity ^0.8.0;
interface IERC721Token{
    function balanceOf(address owner) external view returns(uint256);
    function ownerOf(uint256 tokenId) external view returns(address);
    function approve(address to, uint256 tokenId) external;
    function getApproved(uint256 tokenId) external view returns(address);
    function setApprovalForAll(address operator, bool _approved) external;
    function isApprovedForAll(address owner, address operator) external view returns(bool);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
}
