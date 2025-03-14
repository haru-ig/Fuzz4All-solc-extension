pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_178e24e4e00a904d07d3012ff28517571f0f3584
{
    uint32[]  b;
    uint32 x;
    uint32 y;
    uint x2;
    uint z;
    constructor () public {
        x2 = 2;
        b[0] = 1;
    }
    modifier m13() {
        x = x - 1;
        z = z - 1;
        x2 = x2 + z;
        b[1] = x2;
        y = y + 1;
        return;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        x2 = x2 + z;
        b[2] = x2 + y;
    }
}
contract SemanticEquality_DynamicArrays_178e24e4e00a904d07d3012ff28517571f0f3584
{
    uint b;
    uint y;
    uint z;
    uint32 x;
    uint32 y2;
    constructor () public {
        x = 3;
        y = 2;
        b = 1;
        y2 = 4;
        z = 5;
    }
    function f() public {
        x = x + y;
        y = x + y + 3;
        b = b + z;
        y2 = y2 + 3;
        z = z + y2 + 4;
    }
}
