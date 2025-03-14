pragma solidity ^0.8.0;
interface IERC721 { function transferFrom(address from, address to, uint256 tokenId) external returns (bool success); function approve(address to, uint256 tokenId) external returns (bool success); function setApprovalForAll(address operator, bool _approved) external returns (bool success); function getApproved(uint256 tokenId) external view returns (address operator); function setApprovalForAll(address operator, bool _approved) external; function isApprovedForAll(address operator) external view returns (bool); }

pragma solidity ^0.8.0;
interface IERC721Enumerable is IERC721 { function totalSupply() external view returns (uint256); function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId); function tokenByIndex(uint256 index) external view returns (uint256); }

pragma solidity ^0.8.0;
contract A is IERC165, IERC721, IERC721Enumerable { address owner = msg.sender;   bytes4 private constant _INTERFACE_ID_ERC721_ENUMERABLE = 0x01ffc9a7;     bytes4 private constant _INTERFACE_ID_ERC721 = 0x80ac58cd;     bytes4 private constant _INTERFACE_ID_ERC165 = 0x01ffc9a7;
