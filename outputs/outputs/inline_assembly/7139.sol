pragma solidity ^0.8.0;
contract OptimizelyExample106Mutator3{
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    constructor() {
        x = 1;
    }
    function myFunction( ) public {
        x = x + 1^1 + 1^1 + 1^1 + 1^1 + 1^1 + 1^1;
    }
    function test( ) public {
        x = x + 1 + 1^1 + 1^1 + 1^1 + 1^1 + 1^1 + 1^1;
    }
    function test_old_2( ) public {
        x = x + 1 - 1 + 2^1 + 2^1 + 1*1/2^1 + 1*1/2^1 + 2 + 2^1;
    }
    function test_old_3( ) public {
        x = x + 2^1 + 2^1 + 1*1/2^1 + 1*1/2^1 - 1 + 2^1;
    }
    function test_old_4( ) public {
        x = x + 1*1/2^1 + 2^1 + 2^1 + 1*1/2^1 + 2^1 + 2^1;
    }
}
