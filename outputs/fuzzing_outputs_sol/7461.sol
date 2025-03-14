pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCaller() public payable {

        address(msg.sender).call("");

        address(msg.sender).call{value : msg.value}("");
    }
}
