pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations10_0 {
    uint public i;
    function fct (uint[][][12345] memory x) public {
        i = 0;
        uint[][] memory y = new uint[1][2][1];
        x[0][0][0] = x[0][0][0] + 1;
        i = y[0][0][0] + x[i][0][0] + 1;
        y[0][i][0] = x[x[0][0][0]][0][0] + 1;
        x[x[0][i][0]][0][i] = x[x[x[0][0][i]][i]][0][0] + 1;
        y[0][0][x[i][0][i]] = x[x[0][0][i]][i][0] + 1;
        i = y[x[x[0][0][x[i][0][i]]]][i][0] + y[0][0][x[i][0][i]] + 1;
        x[i][x[x[x[0][i][x[i][0][i]]]][i].pop();
        y[0][i][0] = y[0][i].pop();
        i = y[i][x[i][x[i][0]]][0] + x[x[x[i][0]][i].pop()] + 1;
        y[x[x[0][x[i][0]]].length][x[i][i][x[x[0][i][x[i][0]]][x[i][i].length]][i] = x[i][x[x[0][x[i]]][i][x[i][i].length][i] + 1;
        i = (y[0][i].pop() + x[x[0]][x[0].length].length][i] + x[i][x[0]].length] +
