pragma solidity ^0.8.0;
contract SemanticTest_v4a {
    uint[] public x = [0];
    constructor() public {
        x[1] = 32;
        x = [0, 0, 0];
    }
}
