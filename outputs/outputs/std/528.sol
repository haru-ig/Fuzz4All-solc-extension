pragma solidity ^0.8.0;
inteface IERC721 is IERC712 {
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
    function safeTransferFrom(address from, address to, uint256tokenId) external;
    function safeTransferFrom(address from, address to, uint256tokenId, bytes calldata data) external;
}
