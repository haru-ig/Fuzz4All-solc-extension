pragma solidity ^0.8.0;
address public payable receiver;
function() external payable {
    receiver.transfer(msg.value);
}
