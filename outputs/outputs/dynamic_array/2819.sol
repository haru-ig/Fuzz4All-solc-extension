pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations12 {
    uint public i;
    mapping (uint => uint) public y;
    function fct (uint[] memory x) public {
        i = 0;
        x[0] = x[0] + 1;
        uint index =  y[0];
        x[index] = index;
        x[0] = x[0] + 1;
        x[index] = index;
        uint index1 =  y[y[0]];
        uint value = x[index1];
        x[0] = x[0] + 1;
        x[index] = index;
        x16_83() = x[y[0]] + 1;
        x[0] = x[0] + 1;
        x[index] = index;
        uint index2 =  x[x[y[0] + 1]];
        uint value1 = x[index2];
        x[y[0]] = x16_81();
        x[0] = x[0] + 1;
        x[index] = index;
        x[0] = x[0] + 1;
        uint index3 =  x[x[y[0]] + x[0] + 1];
        uint x22_31 = x[index3];
        x[y[0]] = x;
        x[y[0] + 1] = x[0] + 1;
        x[0] = x[0] + 1;
        x[0] = x[0] + 1;
        x[0] = x[0] + 1;
        uint indexx4 =  x[x[x[y[0]]]] - x[x[0]];
        uint indexy5 =  x[x[x[0]]] - x[x[x[0] + 1]];
        uint index337 =  x[x[x[0] + 1]] + x[y[0]];
        uint value4 = x[index337];
        uint x555 = x[y[0]];
        x[x[x[0]]] = x;
        uint indexx1 =  x[x[0]] + x[0] + 1;
        uint x1 = x[
