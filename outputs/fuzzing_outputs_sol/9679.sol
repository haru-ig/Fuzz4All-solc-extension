pragma solidity ^0.8.0;
contract CallSender {
    address payable _new;
    receive() external payable {
        _new.transfer(msg.value);
    }
}
