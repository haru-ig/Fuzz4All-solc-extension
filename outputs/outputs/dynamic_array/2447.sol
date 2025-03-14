pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_682187e32b6a2d942e7e0698274c0f3721c43b6b
{
    uint16[2] x;

    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[0] = x[0] + 1;
    }
}
