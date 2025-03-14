pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14 {
    uint public i;
    function fct (uint[5] memory x) public {
        i = x[0];
        for(uint i = 1;i < 5;i++)
            x[i] = 25 - x[i];
    }
}
