pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_9e1e387092731e21f43d45d50cc82442b9518175
{
    constructor() {
        uint[] storage x;
        uint[3] memory y;
        uint[] memory a;
        uint[6] memory b;
        a[1] = b;
        b[1] = a;
        x = y;
    }
}
