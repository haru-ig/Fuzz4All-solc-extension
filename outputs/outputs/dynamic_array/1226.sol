pragma solidity ^0.8.0;
contract ArrayInitializer1 {
    uint b;

    constructor() {
        b = [1,2,3];
        b[3] += 1;
    }
}
