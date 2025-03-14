pragma solidity ^0.8.0;
contract SomeInterface is IERC223Receiver {

    function onERC223Received(address operator, address from, address to, uint256 amount, bytes calldata data) external returns(bytes4);
}
