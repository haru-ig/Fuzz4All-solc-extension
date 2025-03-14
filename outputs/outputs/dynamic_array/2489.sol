pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_cf656c0196967684868e1cb7f986c284dc23c170
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        b[0] = 1;
        y = 0;
    }
    function f() public {
        x = x + 1;
        b[1] = aaa;
        y = y + 1;
    }
    function aaa() public pure {
        return 1;
    }
}
