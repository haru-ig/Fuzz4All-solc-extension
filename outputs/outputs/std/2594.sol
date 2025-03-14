pragma solidity ^0.8.0;
interface IERC721TokenURI{
    function getTokenURI(uint256 tokenId) external view returns(string memory);
}
