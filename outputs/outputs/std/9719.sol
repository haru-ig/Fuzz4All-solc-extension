pragma solidity ^0.8.0;
contract MutateNeg2 {
    uint x;
    uint y;
    address[] addrs;
    constructor() {
        x = 0xDEADBEEF;
        y = 0xABCDABBE;
        addrs = new address[](1);
        addrs[0] = msg.sender;
    }
}
