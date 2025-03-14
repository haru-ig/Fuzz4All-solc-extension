pragma solidity ^0.8.0;
contract OptimizelyExample107Optimized {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function test( ) public {
        x = x^1;
    }
    function test_old( ) public {
        x = x & 1;
    }
}
