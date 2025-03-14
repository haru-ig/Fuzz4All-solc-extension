pragma solidity ^0.8.0;
interface IERC721
{
    event TransferSingle(address indexed from, address indexed to, uint256 indexed tokenId);
    event ApprovalSingle(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event MetadataSingle(uint256 indexed tokenId, string uri);
    function transferFrom(address from, address to, uint256 tokenId) external;
    function approve(address to, uint256 tokenId) external;
    function getApproved(uint256 tokenId) external view returns (address operator);
    function setApprovalForAll(address operator, bool _approved) external;
    function isApprovedForAll(address owner, address operator) external view returns (bool);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) external;
    function safeBatchTransferFrom(address from, address to, uint256[] calldata tokenIds, bytes memory data) external;
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeBatchTransferFrom(address from, address to, uint256[] calldata tokenIds) external;
    function getTokenURI(uint256 tokenId) external view returns (string memory);
    function batchGetTokens(uint256[] calldata tokenIds, uint256 maxBatchIndex) external view returns (uint256[] memory tokenOwners, uint256[] memory tokenApprovals, string[] memory tokensURIs);
    function safeMint(address to, uint256 tokenId) external;
    function safeBatchMint(address to, uint256[] calldata tokenIds) external;
    function setTokenURI(uint256 tokenId, string calldata uri) external;
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function maxSupply() external view returns (uint256);
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);
    function tokenByIndex(uint256 index) external view returns (uint256 tokenId);
}
pragma solidity ^0.8.0;
interface IERC722Token
{
    event TransferSingle(address indexed from, address indexed
