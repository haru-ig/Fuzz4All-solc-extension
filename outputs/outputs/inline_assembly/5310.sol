pragma solidity ^0.8.0;
uint valueA = 1;
contract Q {
    uint valueB;
    uint constant init_constant_A = 1;
    constructor() {
        valueB += init_constant_A;
    }
}
