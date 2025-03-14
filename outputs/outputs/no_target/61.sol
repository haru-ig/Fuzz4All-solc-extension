pragma solidity ^0.8.0;
interface IERC223Receiver {
    function onERC223Received(address _operator, address _from, uint256 _value, bytes calldata _data) external returns (bytes4 response);
}
