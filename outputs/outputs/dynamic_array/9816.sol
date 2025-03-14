pragma solidity ^0.8.0;
contract SemanticTest_v4c {
    uint[2] public x = [0];
    constructor() public {
        x = [1];
        x[1] = 800;
        x = [2];
        x[0] = 0x20;
        x = [8];
    }
}
