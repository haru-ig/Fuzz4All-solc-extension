pragma solidity ^0.8.0;
interface IERC223TokenReceiver {
    function onTokenTransfer(address, address, uint256) external returns (bool);
    function onTokenApproval(address, address, uint256, bytes calldata) external returns (bool);
    function onERC721Received(address, address, uint256, bytes calldata) external returns (bytes4);
}
