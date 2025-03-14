pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_8e920f0b775e30dfefcd8774e6ef82b46019bd2f
{
    function f() public pure {
        uint[] memory _b = new uint[](3);
        _b[2] = 0;
        _b[0] = _b[0] + 1;
        _b[1] = _b[0];
    }
}
