pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_82597d2fe02a7793ebea985a8411d3a02e602d7a
{
    function f() public pure {
        uint[] memory _b = new uint[](4) storage empty;
        _b[2] = 0;
        _b[0] = _b[0] + 1;
        _b[1] = _b[0];
    }
}
