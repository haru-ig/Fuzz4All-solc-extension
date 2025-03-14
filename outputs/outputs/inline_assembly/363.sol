pragma solidity ^0.8.0;
contract F8 {
    uint b;
    constructor() {
        b = 1;
    }
    function mutate(uint x, bool force) public {
        if (x >= 1) {
        b += x*((x-1)/x) + (x*((x*x-1)/x+2));
        }
        if (force) {
        x = -1;
        }
    }
}
