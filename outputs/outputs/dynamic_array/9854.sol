pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint256[] x = [0];
    constructor() public {
    x[4294967295]++;
    x[4294967296]++;
    x[4294967297]++;
    }
}
