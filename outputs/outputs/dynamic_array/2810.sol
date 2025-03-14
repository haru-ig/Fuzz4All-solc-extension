pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations9 {
    constructor (uint[] memory c, uint[][][] memory x) public {
        i = 0;
        x[0][0][0] = x[0][0][0] + c[i] + 1;
        x[i][0][0] = i + x[0][i][0] + c[i] + 1;
        x[0][0][i] = x[0][0][0] + c[i] + 1;
        x[0][i][0] = x[0][i][0] + c[i] + 1;
        x[0][0][i] = x[0][0][i] + c[i] + 1;
        x[0][i][i] = x[0][0][i] + c[i] + 1;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations8 {
    uint[] memory c;
    uint[][][] memory x;
    uint public i;
    constructor (uint[] memory c, uint[][][] memory x) public {
        i = 0;
        x[0][0][0] = x[0][0][0] + c[i] + 1;
        x[i][0][0] = i + x[0][i][0] + c[i] + 1;
        x[0][0][i] = x[0][0][0] + c[i] + 1;
        x[0][i][0] = x[0][i][0] + c[i] + 1;
        x[0][0][i] = x[0][0][i] + c[i] + 1;
        x[0][i][i] = x[0][0][i] + c[i] + 1;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations7 {
    uint[] memory c;
    uint[][]
