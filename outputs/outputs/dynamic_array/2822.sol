pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations13 {
    uint public i;
    constructor(uint[] memory x) public {
        return;
        i = x[0];
        i = i + x[i] + 1;
        i = i + 1;
    }
    function fct (uint[] memory x) public {
        x[0] = x[0] + 1;
    }
}
