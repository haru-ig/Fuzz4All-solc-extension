pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_a105d89ac8713884c45a09a8bb427bebb0c4e146
{
    uint[]  data;
    uint x;
    uint y;
    constructor (uint a, uint b, uint c) public {
        uint[2] storage storageArray = data;
        storageArray[0] = a;
        storageArray[1] = b;
        x = 2;
        y = 0;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        data[1] = 1;
    }
}
