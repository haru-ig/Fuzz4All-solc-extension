pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14 {
    uint[5] Memory public x;
    function fct (uint[5] memory x) public {
        x[0] = x[0] + 1;
        if(i == 50)
            x[i] = 25;
        x[i] = i + x[i] + 1;
    }
}
