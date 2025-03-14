pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_2c889c6c81c60f6e3c16a2556610752dd14f1c82
{
    constructor() {
        uint[3] memory a;
        uint[30] memory b;
        a[0] = b + 1;
        a[1] = a[0];
    }
}
