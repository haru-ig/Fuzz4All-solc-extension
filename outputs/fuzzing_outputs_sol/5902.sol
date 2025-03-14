pragma solidity ^0.8.0;
contract Receiver {
    function receive () external payable {}
    function sendEther (address receiver, uint amount) external {}
}
