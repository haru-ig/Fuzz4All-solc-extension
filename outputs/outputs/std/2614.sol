pragma solidity ^0.8.0;
import "./utils/ERC721.sol";
contract Ursa_1 {
    function setApprovalForAll(address operator, bool _approved) external returns (bool ok);
    function isApprovedForAll(address owner, address operator) external view returns (bool ok);
    function safeTransferFrom_Ursa(address from, address to, uint256 tokenId, bytes memory data) external;
    function transferFrom_Ursa(address from, address to, uint256 tokenId) external returns (bool ok);
    function _safeMint_Ursa(address to, uint256 tokenId) internal returns (bool ok);
    function safeMint_Ursa(address to, uint256 tokenId) external returns (bool ok);
    function safeBurn_Ursa(uint256 tokenId) external;
    function _burn_Ursa(uint256 tokenId) internal;
}
