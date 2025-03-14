pragma solidity ^0.8.0;
contract OptimizelyExample105bSynthetic {
    uint public x;

    struct D1 { uint a; }
    struct D2 { uint b; }

    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function test___equivalent( ) public {
        x = x*x;
    }
    function test___equivalent_old( ) public {
        x = x & x;
    }
}
