pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations22 {
    uint[5] a;
    uint[7] b;
    constructor () public {
        uint l = a.length + b.length;
        uint h = a.length + 1;
        b[l] = l + 4 * l;

        a[h] = l + 12 * l;
        b[h] = l + 8;

        a.length = h;
        b.length = 0;
        a[h] = l + 15 * l;
        b[l] = l * 8;
    }
}
