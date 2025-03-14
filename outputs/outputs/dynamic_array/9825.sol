pragma solidity ^0.8.0;
contract SemanticTest_v4b {
    uint a;
    uint[] public b;
    constructor() public {
        uint[] memory c;
        a = 8;
        b = c;
    }
}
