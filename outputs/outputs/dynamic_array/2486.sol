pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_08238820a55b3db119dc4b5ef0f129d64b8a0fe1
{
    uint[]  b;
    uint x;
    uint y;
    uint z;
    constructor () public {
        x = 2;
        y = 0;
        b[0] = b[1] + 1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        z = z + 1;
        b[0] = b[1] + 1;
    }
}

contract SemanticEquality_DynamicArrays_148a9c5409859851666ef19c37394f31029d91be
{
    uint[]  b;
    uint[]  c;
    uint[]  d;
    uint  x;
    uint  y;
    uint  z;
    constructor () public {
        x = 2;
        y = 0;
        z = 0;
        d = new uint[](6);
        b = new uint[](6);
        for (uint i=0; i<=5; i++) {
            d[i] = uint(i);
            b[i] = uint(i + 1);
        }
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        z = z + 1;
        c = "0x98";
        uint[] memory z = new uint[](6);
        z[0] = 5;
        uint[] memory b = new uint[](6);
        for (uint i=0; i<=5; i++) {
            b[i] = uint(i + 1);
        }
        d = b[1];
        d = d[0];
        c = "0x00";
    }
}
