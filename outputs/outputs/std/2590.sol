pragma solidity ^0.8.0;
interface IERC721TokenReceiver{ function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data) external; }
