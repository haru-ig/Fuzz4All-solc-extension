pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_72ab2e40615349a37c5cc293d784a15351313351
{
    uint32[4] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[2] = 3;
        x[3] = 4;
        x[0] = x[0] + 1;
    }
}
