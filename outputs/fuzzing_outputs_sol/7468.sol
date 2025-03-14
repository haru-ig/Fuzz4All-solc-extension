pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCaller() public payable {
        address(msg.value).call("");
        address(msg.value).call{value : msg.value}("");
    }
}
