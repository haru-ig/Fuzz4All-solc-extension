pragma solidity ^0.8.0;
contract MutateNeg4 {
    uint x;
    uint y;
    uint z;
    address[] addrs;
    constructor() {
        x = 0xABDEADBEEFA;
        y = 0xABDEADBEEFA0;
        z = 0xABDEADABBEABEF;
        addrs = new address[](1);
        addrs[0] = msg.sender;
    }
}
