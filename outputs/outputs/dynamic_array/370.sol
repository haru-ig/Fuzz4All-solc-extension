pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface IERC721 {
    function balanceOf(address owner) external view returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeBatchTransferFrom(address[] from, address[] to, uint256[] tokenIds) external;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) external;
    function safeBatchTransferFrom(address[] from, address[] to, uint256[] tokenIds, bytes memory data) external;
    function approve(address to, uint256 tokenId) external;
    function getApproved(uint256 tokenId) external view returns (address);
    function setApprovalForAll(address operator, bool approved) external;
    function isApprovedForAll(address operator, uint256 tokenId) external view returns (bool);
}
