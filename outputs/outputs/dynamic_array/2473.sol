pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_84de5c3930814f64be452535e18bb56a5a459962
{
    uint256[5] x;
    function f() public {
        x[3] = 2;
        x[4] = 2;
        x[3] = 1;
        x[3] = 1;
        x[4] = x[3] + 1;
        x[4] = x[3] + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_84de5c3930814f64be452535e18bb56a5a459962
{
    uint256[9] x;
    function f() public {
        x[9] = 2;
        x[3] = 2;
        x[2] = 2;
        x[4] = 2;
        x[9] = x[4] + 1;
    }
}
