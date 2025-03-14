pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_5b7d74b6eb2c5680b59bb0307a8b72173867d1fa
{
    uint[][] memory _a;
    uint _b;

    function f() public
    {
        _b = _a[0][0][0];
    }
}
