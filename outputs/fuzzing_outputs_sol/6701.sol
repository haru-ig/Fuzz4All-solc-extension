pragma solidity ^0.8.0;
contract Recipient {
    function receive() external payable {
        msg.sender.transfer(msg.value);
    }
}
