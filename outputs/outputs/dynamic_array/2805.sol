pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations10 {
    uint public i;
    function fct (uint[][][12345] memory x) public {
        i = 0;
        x[0][0][0] = x[0][0][0] + 1;
        x[i][0][0] = i + x[i][0][0] + 1;
        x[0][i][0] = x[0][0][0] + 1;
        x[0][0][i] = x[0][i][0] + 1;
        x[0][i][i] = x[0][0][i] + 1;
    }
}
