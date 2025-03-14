pragma solidity ^0.8.0;
contract Caller {
    fallback function sendEtherToCaller() public payable {
        msg.sender.send(msg.value);
    }
}
