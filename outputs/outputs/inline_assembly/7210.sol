pragma solidity ^0.8.0;
contract IERC721Token {
    function balanceOf(uint256 tokenId) virtual public view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) virtual public view returns (uint256 tokenId);
    function getApproved(uint256 tokenId) virtual public view returns (address operator);
    function setApprovalForAll(address operator, bool approved) virtual public;
    function supportsInterface(bytes4 interfaceId) virtual public view returns (bool);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
}
