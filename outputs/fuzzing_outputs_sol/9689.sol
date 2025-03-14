pragma solidity ^0.8.0;
contract MutatedSender {
    address payable _new;
    receive() external payable {
        _new.transfer(msg.value);
    }
}
