pragma solidity ^0.8.0;
contract MutateOptimizelyExample106{
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function myFunction( ) public {
        D1 memory d1;
        D2 memory d1_mem;
        d1.a = 100000;
        d1_mem.a = 1000;
        x = x | 1e100;
        x = x + x;
        x = x + x - 1;
    }
    function test( ) public {
        D2[] memory d1;
        D2[] memory d1_mem;
        d1.push( D2( 2000 ) );
        d1.push( D2( 3000 ) );
        d1[0].b = 2000;
        d1[1].b = 3000;
        x = x ^ x;
        x = x + x - 2;
        x = x + x + x;
        x = x + x - 1;
    }
    function test_old( ) public {
        D5 memory d1;
        D2[] memory d1_mem;
        d1.array1.push( 5000 );
        d1.array1.push( 6000 );
        x = x + x + x + x - 1;
        x = x | x;
    }
}
