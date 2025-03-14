pragma solidity ^0.8.0;
contract F {
    uint[3] public x = [10, 13, 1, 3];
    constructor(uint input, uint a, uint[3] memory input2) public {
        uint[3] memory prev = x;
        x[0] = input;
        x[1] = a;
        x[2] = input2[0];
        prev[1] = prev[1];
        prev[2] = prev[0];
    }
}
