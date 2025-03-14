pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_20869fa9f7869d1c946fd4cf1f3b2a9dc0fe7a82
{
    function f() public {
        int[] memory _a = new int[](2);
        uint[] memory _b = new uint[](2);
        _b[0] = _b[0] + 1;
        _b[1] = 2;
        _a[0] = _b[1];
    }
}
