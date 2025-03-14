pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_d89e90b88e9953b3c601b501e899030c39f5c08e
{
    using MemoryLayout for uint[];
    uint x[2];
    uint y;
    uint[2] b;
    uint b1;
    constructor () public {
        x[1] = 2;
        x[0] = 0;
        b = new uint[](0);
        b = new uint[](2);
        b[1] = 2;
        b[0] = 1;
    }
    function f() public {
        x[1] = x[0];
        b[0] = x[1];
        x[1] = x[1] + y;
        x[0] = x[0] + y;
    }
    function g() public {
        x[1] = x[1];
        x[0] = x[0];
        b[0] = x[1];
        b1 = x[1];
        y = y + x[1] + 1;
    }
}
