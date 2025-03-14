pragma solidity ^0.8.0;
contract C1 {
    uint256[] internal s = new uint256[](arraySize);
    uint256 value;
    uint256[arraySize] public a;
    constructor() {
        a[3] = 42;
        a[3] = 42;
    }
}
