pragma solidity ^0.8.0;
interface IERC677TokenReceiver {
    function onERC677Received(address, address, uint256, bytes calldata) external returns(bytes4);
}
