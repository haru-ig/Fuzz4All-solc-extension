pragma solidity ^0.8.0;
contract OptimizelyExample106Mutator{

    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }

    function test( ) public {
        D5 memory d5;
        d5.array1[d5.array2.length] = d5.array2.length + 1;
        d5.array2[d5.array1.length] = d5.array1.length + 1;
        x = 1^1+1^1;
    }
    function test_old_2( ) public {
        D5 memory d5;
        d5.array1[d5.array2.length] = d5.array2.length + 1;
        d5.array2[d5.array1.length] = d5.array1.length + 1;
        x = 1^1+1+1+1;
    }
    function test_old_3( ) public {
        D5 memory d5;
        d5.array1[d5.array2.length] = d5.array2.length + 1;
        d5.array2[d5.array1.length] = d5.array1.length + 1;
        x = 1^3+1^1+1^1+1;
    }
    function test_old_4( ) public {
        D5 memory d5;
        d5.array1[d5.array2.length] = d5.array2.length + 1;
        d5.array2[d5.array1.length] = d5.array1.length + 1;
        x = 1^1+1^1+1^2+1^1;
    }
}
