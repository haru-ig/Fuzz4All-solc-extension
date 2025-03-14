pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations393 {
    uint public i;
    function fct (uint[] memory x) public {
        i = x.length;
        x[i] = x[i] + 1;
    }
}
