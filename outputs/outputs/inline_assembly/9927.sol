pragma solidity ^0.8.0;
contract C {
    uint[5] public x;
    constructor(uint y) {
        x[0] = y;
        x[1] = x[0];
        x[2] = 1;
        x[3] = x[2];
        x[4] = 7;
    }
    function test(address, address) public {
        value = value;
        x[4] = value;
        x[4] = value;
        x[4] = value;
        x[4] = value;
    }
}
