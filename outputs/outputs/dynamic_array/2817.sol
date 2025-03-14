pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations22 {
    uint public i;
    function fct (uint[] memory x) public {
        i = 0;
        x[0] = x[0] + 1;
        x[(i +51) * 512] = i + x[(i +51) * 512] + 1;
        x[(i +51) * 512] = i + x[(i +51) * 512] + 1;
        x[0] = x[0] + 1;
        x[(i +51) * 512] = i + x[(i +51) * 512] + 1;
        x[(i +51) * 512] = i + x[(i +51) * 512] + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations33 {
    uint public i;
    function fct (uint[] memory x) public {
        (i, i, i, i) = 0;
        x[0] = x[0] + 1;
        x[bool(true) * 256] = (x[bool(true) * 256], x[bool(true) * 256], x[bool(true) * 256], x[bool(true) * 256]) + 1;
        x[bool(true) * 256] = (x[bool(true) * 256], x[bool(true) * 256], x[bool(true) * 256], x[bool(true) * 256]) + 1;
        x[0] = x[0] + 1;
        x[bool(true) * 256] = (x[bool(true) * 256], x[bool(true) * 256], x[bool(true) * 256], x[bool(true) * 256]) + 1;
        x[bool(true) * 256] = (
