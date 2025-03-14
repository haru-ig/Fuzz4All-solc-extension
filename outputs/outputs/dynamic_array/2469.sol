pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_84de5c3930814f64be452535e18bb56a5a459962
{
    uint256[2] x;
    function f() public {
        x[1] = 2;
        x[0] = x[0] + 1;
        x[1] = x[0] + 1;
    }
}
