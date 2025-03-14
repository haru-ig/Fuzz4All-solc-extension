pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_762a07ae2e9f4d972aadb2c0fe85aa900b224787
{
    uint[] internal b;

    function f() public {
        b[0] = b[0] + 1;
        b[1] = b[0] + 1;
    }
}
