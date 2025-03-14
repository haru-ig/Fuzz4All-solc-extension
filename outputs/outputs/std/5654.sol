pragma solidity ^0.8.0;
contract M9{
    uint public y;
    uint public values[3];
    constructor() {
        uint temp = 37;
        for (uint i = 1; i < 3; i++) {
            values[i] = 47+temp;
            temp *= 37;
            y ^= values[i];
        }
        y ^= values[1];
        y ^= values[0];
        y ^= values[2];
    }
}
