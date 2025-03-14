pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_23c5f961be3687b4dd8df85d23bd50df0b182408
{
    uint32[5] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[3] = 3;
        x[4] = 4;
        x[1] = x[1] + 1;
    }
}
