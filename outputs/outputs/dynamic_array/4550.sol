pragma solidity ^0.8.0;
interface IERC677TokenReceiver3 {
    function onERC677Received(address, address, uint256, bytes calldata) external returns(bytes4);
    function onERC677Received(address indexed operator, address from, uint256 tokenId, bytes calldata data) external returns(bytes4);
    function onERC677Received(address operator, address from, uint256 tokenId, bytes calldata data, bytes calldata operatorData) external returns(bytes4);
}
