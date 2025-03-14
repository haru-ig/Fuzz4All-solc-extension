pragma solidity ^0.8.0;
interface IERC721Enumerable {
    event ApprovalBatch(uint256 indexed tokenId, address indexed owner, address indexed operator);
    function totalSupply() external view returns (uint256);
    function balanceOf(address owner) external view returns (uint256 balance);
    function tokenByIndex(uint256 index) external view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);
    function tokenURI(uint256 tokenId) external view returns (string memory);
}
