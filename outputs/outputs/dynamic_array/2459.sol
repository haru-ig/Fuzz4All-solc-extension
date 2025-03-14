pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_54b9722198674330c1d79b07a360db7f1dc43c48
{
    uint32[arraySize] x;
    function f(uint32[arraySize] memory z) public {
        x[0] = 1;
        x[1] = 2;
        x[2] = 3;
        x[3] = 4;
        x[0] = x[0] + 1;
    }
}
