pragma solidity ^0.8.0;
contract Mutate13 {
    uint a = 1000e18;
    uint b;
    uint c;
    constructor() {
        b = 128;
        c = b + (uint(uint(uint(uint(a))) * uint(b))) / (uint(uint(uint(uint(uint(a))) * uint(c))));
    }
}
