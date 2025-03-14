pragma solidity ^0.8.0;
contract Fallback {
    function fallback(address sender) external payable {
        sender.call("");
        sender.call{value : msg.value}("");
    }
}
