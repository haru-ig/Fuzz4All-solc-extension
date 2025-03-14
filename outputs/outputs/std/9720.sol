pragma solidity ^0.8.0;
contract MutateNeg2A {
    uint x;
    uint y;
    address[] addrs;
    constructor() {
        x = int(0xDEADBEEF >> 8);
        y = int(0xABCDABBE >> 8);
        addrs = new address[](1);
        addrs[0] = msg.sender;
    }
}
