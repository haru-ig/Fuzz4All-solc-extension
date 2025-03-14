pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations21 {
    uint[5] a;
    constructor () public {
        uint l = a.length;
        uint h = a.length + 1;
        a[l] = l + 4 * l;
        a[h] = l + 16 * l;
    }
}
