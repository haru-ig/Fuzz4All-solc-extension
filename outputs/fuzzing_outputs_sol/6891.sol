pragma solidity ^0.8.0;
contract Caller {
    function send() public {
        address payable caller = msg.sender;
        caller.transfer(100e18);
    }
}
