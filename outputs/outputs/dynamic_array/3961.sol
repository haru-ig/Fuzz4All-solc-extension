pragma solidity ^0.8.0;
contract C {
    uint[,] x;
    uint[,] z;
    uint[2] y;
    constructor() public {
        x = new uint[2, 10]();
        x[1, 1] = 3;
    }
}
