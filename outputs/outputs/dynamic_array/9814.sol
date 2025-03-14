pragma solidity ^0.8.0;
contract SemanticTest_v4b {
    uint[] public x = [0];
    constructor() public {
        x[1] = 800;
        x = [1];
        x = [0x20];
    }
}
