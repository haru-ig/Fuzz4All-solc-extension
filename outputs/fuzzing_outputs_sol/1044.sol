pragma solidity ^0.8.0;
contract EtherFallback {
    function receive() external pure {
        msg.sender.call{value: msg.value}("");
    }
    function fallback() public payable {}
 }
