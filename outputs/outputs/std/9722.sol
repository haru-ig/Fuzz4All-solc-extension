pragma solidity ^0.8.0;
contract MutateNeg3 {
    uint x;
    uint y;
    address[] addrs;
    constructor() {
        x = 0xDEADBEEF;
        y = 0xABCDABBE;
        addrs = new address[](1);
        addrs[0] = msg.sender;
        x_ = 0xCDEF0000;
        y_ = 0xEFEFEF;
        addrs_ = x + y_;
    }
}
