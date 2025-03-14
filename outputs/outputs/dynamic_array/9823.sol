pragma solidity ^0.8.0;
contract SemanticTest_v4b_storage {
    uint[] public x = [0];
    constructor() public {
        x += [1];
        x[0] = 32;
    }
}
