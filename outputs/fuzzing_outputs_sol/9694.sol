pragma solidity ^0.8.0;
contract MutatedSender {
    address payable _new;
    fallback() external payable {
        _new.transfer(msg.value);
    }

    receive() external payable {}
}
