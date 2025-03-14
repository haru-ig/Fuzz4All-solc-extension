pragma solidity ^0.8.0;
contract Receiver {
    function receive () external payable {
        uint amount = msg.value;
        msg.sender.call{value: amount}('');
    }
    function sendEther (address receiver, uint amount) external {
        receiver.call{value: amount}('');
