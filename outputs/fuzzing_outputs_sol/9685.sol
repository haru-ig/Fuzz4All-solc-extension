pragma solidity ^0.8.0;
contract CallSender {
    struct Address { string str; bytes32 hash; }
    address _new;
    receive() external payable {
        _new.transfer(msg.value);
    }
    constructor (address _new) {
        _new.transfer(_new.balance);
    }
}
