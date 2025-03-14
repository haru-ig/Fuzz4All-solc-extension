pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations22 {
    uint[5] a;
    uint[5] b;
    constructor () public {
        uint l = a.length;
        uint h = a.length + 1;
        a[l] = l + 4 * l;
        b[h] = l + 16 * l;
    }
}





contract TestMutations_ArrayMutations23 {
    uint[5] a;
    uint[5] b;
    uint[5] c;
    uint[42] d;

    constructor () public {
        uint l = a.length;
        uint h = a.length + 1;
        a[l] = a[l] + 4 * l;
        a[h] = a[h] + 16 * l;
        c[h] = c[h] + 8 * l;
        c[h] = c[h] * a[h] + 4 * l;

        a[h] = a[h] * a[h] + 16 * l;
        a[h] = a[h] + 16 * l;
        a[h] = a[h] * a[h] + 24 * l;
        b[h] = b[h] + 16 * l;
