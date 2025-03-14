pragma solidity ^0.8.0;
interface IERC223Receiver {
  function onERC223Received(
    address operator,
    address from,
    uint256 tokenId,
    bytes calldata data
  ) external returns (bytes4);
}
