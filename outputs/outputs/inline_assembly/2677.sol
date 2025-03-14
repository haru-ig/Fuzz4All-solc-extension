pragma solidity ^0.8.0;
contract D {
    uint z;
    uint public x;
    uint public w;

    constructor() {
        z = 0;
        x = 3 * z + 1;
        w = x;
    }
}
