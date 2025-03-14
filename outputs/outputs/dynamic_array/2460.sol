pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_72ab2e40615349a37c5cc293d784a15351313351
{
    uint32 x;
    function f() public {
        x = 1;
        x = 2;
        x = 3;
        x = 4;
        x = x + 1;
    }
}
