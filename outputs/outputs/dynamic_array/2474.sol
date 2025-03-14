pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_84de5c3930814f64be452535e18bb56a5a459962
{
    uint256[3] x;
    function f() public {
        x[1] = 2;
        x[0] = x[1] + 1;
        x[2] = x[0] + 1;
        x[0] = x[2] + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_84de5c3930814f64be452535e18bb56a5a459962
{
    uint256[3][2] x;
    function f() public {
        x[1][0] = 2;
        x[1][1] = x[0][1] + 1;
        x[0][0] = x[1][0] + 1;
        x[1][2] = x[0][2] + 1;
        uint256 a;
        (a,) = x[1][1];
    }
}
