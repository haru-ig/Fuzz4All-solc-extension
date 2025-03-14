pragma solidity ^0.8.0;
contract ReceiveFallback {
    event EtherReceived();
    receive() external payable {}
    receive() external payable {
        emit EtherReceived();
    }
}
