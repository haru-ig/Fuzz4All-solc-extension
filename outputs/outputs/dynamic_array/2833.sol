pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15 {
    uint[] memory x;
    function fct (uint[] memory y) public {
        i = y[0];
        for(uint i = 1;i < 5;i++)
            y[i] = 25 - y[i];
    }
}
