pragma solidity ^0.8.0;
contract SemanticTest_v6a {
    uint[] public x = [0];
    constructor() public {
        x.push(2);
        x[0] = 30;
    }
}
