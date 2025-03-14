pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_d2fdae0862195f7aa28168a6531b97e0992f902e
{
    uint256[2][2] g;
    function f() public {
        g[0][1] = 1;
        g[0][0] = 2;
        g[_].[1] = _[0] + _;
    }
}
