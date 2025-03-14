pragma solidity ^0.8.0;
contract C {
    address payable defaultReceiver;
    receive() external payable {
        defaultReceiver.transfer(msg.value);
    }
}
