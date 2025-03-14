pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_42ed5a3489906db2976c8d3284b91d0a167a0f79
{
    uint a;
    uint b;
    constructor ()public
    {
        a = 2;
        b = 0;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_89101675524e555051b1bf14108584ef38a1e889
{
    uint d;
    uint[] [] a;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
        a = new uint[][][](0);
        a = new uint[][][](1);
        a[0] = new uint[](0);
        a[0] = new uint[](1);
        a[0][0] = 2;
        a[0][1] = 0;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        a[0][0] = 2 | 0x8000000000000000000000000000000000000000000000000000000000000;
    }
    function g() public {
        x = x + 1;
        y = y + 1;
        a[0][0] = 2 | 0x800000000000000000000000000000000000000000000000000000000000000;
    }
}
