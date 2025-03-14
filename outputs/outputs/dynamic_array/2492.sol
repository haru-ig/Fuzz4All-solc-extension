pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_178e24e4e00a904d07d3012ff28517571f0f3584
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
        b[0] = 1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[1] = b[0] + 1;
    }
}
