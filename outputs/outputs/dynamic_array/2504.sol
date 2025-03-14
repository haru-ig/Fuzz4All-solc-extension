pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_9ef7464f6f9c1a67a8b4f43b27cd1f1cb4c2d366
{
    constructor () public {
        uint[] memory _b = new uint[](2);
        _b[0] = _b[0] + 1;
        _b[1] = 2;
    }
    function f() public {
        uint[] memory _b = new uint[](2);
        _b[0] = 2;
        _b[1] = _b[0] + 1;
    }
}
