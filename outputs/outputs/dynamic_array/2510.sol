pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays2_d6844206793b212ec23581b856f68c3ee601982e
{
    function f() public pure {
        uint[1] memory _b = new uint[](2);
        _b[0] = _b[0] + 1;
        _b[1] = _b[0];
    }
}
