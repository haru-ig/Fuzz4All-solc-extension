pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14a {
    uint public i;
    function fct (uint[5] memory x) public {
        i = x[0];
        for(uint j = 1;j < 5;j++)
            x[j] = 25 - x[j];
    }
}
