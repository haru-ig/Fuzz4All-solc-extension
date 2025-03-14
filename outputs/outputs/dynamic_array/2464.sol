pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_72ab2e40615349a37c5cc293d784a1535137be16
{
    uint256[2] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[0] = x[0] + 1;
    }
}
