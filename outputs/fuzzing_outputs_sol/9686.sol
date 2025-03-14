pragma solidity ^0.8.0;
contract ComplexSender {
    address payable _new;
    receive() external payable {
        this.transfer(msg.value);
    }
}
