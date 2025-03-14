pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_66fa6181872660de464da7b32ceffbeed9ec59b6
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
        b[1] = 1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[0] = b[1] + 1;
        b_mutate();
    }
    function b_mutate() public {
        b[1] = b[0] + 1;
    }
}
