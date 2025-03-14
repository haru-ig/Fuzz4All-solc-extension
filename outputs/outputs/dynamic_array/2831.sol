pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15 {
    uint[6] public i;
    function fct (uint[6] memory x) public {
        i[3] = 25905;
        for(uint i = 3;i < 6;i++)
            x[i] = 76542 - x[i];
    }
}
