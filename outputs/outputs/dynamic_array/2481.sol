pragma solidity ^0.8.0;
contract SemanticEquality_Semantic_535ee33d04cb9913a3b7d847e605246c22388145
{
    uint[] memory b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
        b = new uint[](1);
        b[0] = 2;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[0] = b[1] + 1;
    }
}
