pragma solidity ^0.8.0;
contract Fallback {
    address payable _fallback_receiver;
    address payable receive() external payable {
        _fallback_receiver.transfer(address(this).balance);
    }
    function fallback() public pure {
        address payable receiver = address(this).balance;
        fallback_call(receiver, receiver, receiver);
    }
    function fallback_call(address payable receiver, address payable receiver1, address payable receiver2) private pure {}
 }
