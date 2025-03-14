pragma solidity ^0.8.0;
contract SemanticTest_v4c {
    uint[][] public x = [[0]];
    constructor() public {
        x[1][0] = 800;
    }
}
