pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_fc69c22b2061c0595cb819c690b12b6d746b7557
{
    function f() public pure {
        uint[3] memory _b = new uint[](3);
        _b[2] = 0;
        _b[0] = _b[0] + 1;
        _b[1] = _b[0];
    }
}
