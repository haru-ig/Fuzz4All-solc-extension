pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations13 {
    uint public i;
    function fct (uint[5] memory x) public {
        if(i == 50)
            x[i] = 25;
        x[0] = x[0] + 1;
        x[i] = i + x[i] + 1;
    }
}
