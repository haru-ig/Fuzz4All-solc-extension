pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15 {
    uint public i;
    function fct (uint(dynamic) memory x) public {
        x[i] = i + x[i] + 1;
        x[0] = x[0] + 1;
        x[i] = i + x[i] + 1;
    }
}
