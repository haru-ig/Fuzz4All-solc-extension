pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24 {
    uint a[99];
    uint[99] b;
    constructor () public {
        a[ 0] = 1
        b[ 0] = a[512];
        a[256] = 2;
        a[ 1] = a[257];
        b[ 1] = a[513];
        a[ 2] = a[258];
        b[ 2] = a[514];
        a[655] = 3;
        a[259] = a[515];
        a[961] = a[260];
        b[ 3] = a[516];
    }
}
