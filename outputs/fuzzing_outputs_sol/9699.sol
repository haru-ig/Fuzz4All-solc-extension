pragma solidity ^0.8.0;
contract MutatedReceiver {
    address payable _new;
    fallback() external payable {
        _new = msg.sender;
    }
    receive() external payable {}
}
