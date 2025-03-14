pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations11 {
    uint public a;
    uint[1][3] memory b;
    function fct (uint[1][3] memory x) public {
        a = 0;
        x[a][0] = x[a][0] + 1;
        x[a][1] = x[a][1] + x[a][0] + 1;
        x[a][2] = i * x[a][0] + x[a][1] + x[a][2];
    }
}
