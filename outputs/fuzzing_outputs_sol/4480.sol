pragma solidity ^0.8.0;
contract Caller {
    function get() public payable {
        address payable self = payable(msg.sender);
    }
}
