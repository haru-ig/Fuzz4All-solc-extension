pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations1 {
    uint public i;
    function fct (uint[] memory x) public {
        x[0] = x[0] + 1;
        x[0] = x[0] + 1;
        x[i] = i + x[i] + 1;
    }
}
