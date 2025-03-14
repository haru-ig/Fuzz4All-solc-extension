pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations10 {
    uint public i;
    function fct (uint[] memory x) public {
        i = 0;
        x = [x, x, x, x];
        x[0] = x[0] + 1;
        x[x.length] = x[x.length] + 1;
        x[1] = x[1] + 1;
        x[2 * i] = x[2 * i] + 1;
    }
}
