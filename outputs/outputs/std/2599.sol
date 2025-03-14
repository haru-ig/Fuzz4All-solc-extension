pragma solidity ^0.8.0;
interface IERC721Enumerable {

    function totalSupply() external view returns (uint256);


    function tokenURI(uint256 tokenId) external view returns (string memory);


    function ownerOf(uint256 tokenId) external view returns (address);
}
