pragma solidity ^0.8.0;
contract Example9 {
    uint a;
    event TestEvent(uint r);
    constructor(uint a_) {
        a = a_;
    }
    receive() external pure {
        emit TestEvent(a);
    }
}
