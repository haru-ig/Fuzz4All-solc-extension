pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_5842328b04cb9947d0b8dd5e7612c37231452be4
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
    }
    function f() public {
        b = [2, 2] + [0];
        x = x + 1;
        y = y + 1;
    }
}
