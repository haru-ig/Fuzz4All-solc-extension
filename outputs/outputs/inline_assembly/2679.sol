pragma solidity ^0.8.0;
contract D {
    uint x, z;
    uint public w;
    constructor() { x = 3 * z + 1; }
    fallback () public {
        w = x;
    }
}
