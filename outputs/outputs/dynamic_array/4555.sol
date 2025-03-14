pragma solidity ^0.8.0;
interface IERC677TokenReceiver {
    event OnERC677Received(address operator, address from, uint256 tokenId, bytes data);

    function onERC677Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns(bytes4);
}
