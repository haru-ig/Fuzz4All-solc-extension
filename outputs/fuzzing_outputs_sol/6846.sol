pragma solidity ^0.8.0;
contract Caller {

    address payable _to;
    uint counter;

    constructor() payable {
        counter = 0;
        _to = payable(msg.sender);
    }

    receive() payable external {
        counter = 1;
        _to.transfer(value);
    }
}
contract Receiver {
    uint counter;
    uint value;
    receive() payable external {
        counter = 2;
    }
}
