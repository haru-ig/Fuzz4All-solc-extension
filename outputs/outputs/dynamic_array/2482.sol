pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_ff57204026b0385ce4243f48534f656c39786b1b
{
    uint[] b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
        b = [2];
        b[0] = 2;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[0] = b[1] + 1;
    }
}
