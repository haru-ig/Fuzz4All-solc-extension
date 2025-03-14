pragma solidity ^0.8.0;
<fim_middle>contract IERC677TokenReceiver {
    function onERC677Received(address, address, bytes4, bytes calldata) external returns(bytes);
}
