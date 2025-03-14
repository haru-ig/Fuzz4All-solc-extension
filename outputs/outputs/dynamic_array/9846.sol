pragma solidity ^0.8.0;
contract SemanticTest_v5b_Mutated {
    uint[] x = [0];
    constructor(uint[] memory initx) public {
        require(x.length == 0, "Initial check");
        uint[] memory initxCopy = initx;
        x = [0x8201, 0x8202, 0x8203];
        for(uint i=0; i<x.length; i++) {
            require(x[i] == initxCopy[i], "Second check");
        }
    }
}
