pragma solidity ^0.8.0;
contract SemanticTest_v7a {
    uint[] x = [0];
    constructor() public {
    x = [0x8201u,0x8202u,0x8203u];
    x[1] = 0x1001u;
    x[2] = 0x1002u;
    }
}
