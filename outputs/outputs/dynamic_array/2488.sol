pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_77de125260b730623525f62bf5c36f6049e7031
{
    uint[]  b;
    uint x;
    uint y;
    constructor (uint b1) public {
        x = 2;
        y = 0;
        b[0] = b1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[1] = b[0] + 1;
    }
}
