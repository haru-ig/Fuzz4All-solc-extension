pragma solidity ^0.8.0;
interface IERC20Balance {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
}

pragma solidity ^0.8.0;

interface IERC721Token {
    function balanceOf(address owner) external view returns (uint256 balance);
    function tokenURI(uint256 tokenId) external view returns (string memory url);
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
}

interface IERC1721 {
    function balanceOf(address owner) external view returns (uint256 balance);
    function tokenURI(uint256 index) external view returns (string memory url);
    function ownedBy(uint256 tokenId) external view returns (address);
    function ownerOf(uint256 tokenId) external view returns (address);
    function supportsInterface(bytes4 interfaceId) external returns (bool supports);
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator
