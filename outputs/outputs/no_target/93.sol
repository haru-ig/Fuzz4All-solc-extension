pragma solidity ^0.8.0;
interface IERC223Receiver {
    function onMessage(address, address, bytes memory) public returns (bytes4);
}
