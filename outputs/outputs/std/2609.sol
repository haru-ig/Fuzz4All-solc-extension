pragma solidity ^0.8.0;
interface IERC721 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    function balanceOf(address owner) external view returns (uint256 balance);
    function approve(address to, uint256 tokenId) external returns (bool ok);
    function getApproved(uint256 tokenId) external view returns (address owner);
    function getOwnerOf(uint256 tokenId) external view returns (address owner);
    function transfer(address to, uint256 tokenId) external returns (bool ok);
    function transferFrom(address from, address to, uint256 tokenId) external returns (bool ok);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) external;
    function addBatch(uint256[] calldata tokensToMint) external;
    function removeBatch(uint256[] calldata tokensToBurn) external;
    function burn(uint256 tokenId) external;
    function tokenURI(uint256 tokenId) external view returns (string memory);
}
pragma solidity ^0.8.0;
