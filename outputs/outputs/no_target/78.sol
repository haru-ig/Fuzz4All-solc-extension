pragma solidity ^0.8.0;
interface IERC223TokenRecipient {
    function onERC223Received(address, address, uint256, bytes calldata) external returns (bytes4);
}
