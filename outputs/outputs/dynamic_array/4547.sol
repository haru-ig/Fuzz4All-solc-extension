pragma solidity ^0.8.0;
interface IERC721Enumerable {
    function tokenOfOwnerByIndex(address, uint256) external view returns (uint256 tokenId);
    function tokenOfOwner(address, address) external view returns (uint256);
    function totalSupply() external view returns(uint256);
}
