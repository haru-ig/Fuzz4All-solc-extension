pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_4244fd34ce1453d3373eefe8df633d632847ce17
{
    uint16[2] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[0] = x[0] + 1;
        uint[10] memory y;
        for (uint _iter=0; _iter<10; _iter++) y[_iter] = 0;
        x[0] = x[0] + 1;
        x[1] = x[0] + x[1];
        x[0] = x[0] + x[1];
    }
}
