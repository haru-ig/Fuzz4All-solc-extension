pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_ArrayInit_Mod
{
    uint[9] y;
    constructor() public {
        y[7] = 88;
        y[9] = 99;
    }
    function init(uint[9] _array) public {
        y = _array;
    }
}
