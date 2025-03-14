pragma solidity ^0.8.0;
contract MutatePos2 {
    uint x;
    uint y;
    address[] internal addrs;
    constructor() {
        x = 0;
        addrs = new uint[](20);
        addrs[0] = address(this);
        for (uint k = 0; k < 20; k++) {
            addrs[k+1] = address(new MutatePos2);
        }
    }
}
