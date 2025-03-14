pragma solidity ^0.8.0;
contract OptimizelyExample106{
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function myFunction( ) public {
        x = x | 1;
    }
    function test( ) public {
        x = x | x;
    }
    function test_old( ) public {
        x = x + x;
    }
}
contract OptimizelyExample106Real{
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function myFunction( ) public {
        x = 1;
    }
    function test( ) public {
        x = 1 + 1;
        x = 1 + 1^1;
    }
    function test_old( ) public {
        x = x + 1;
    }
}
