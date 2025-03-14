pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations21_Mutations {
    uint[5] a;
    constructor () public {
        uint l = a.length;
        uint h = a.length + 1;
        a[l] = l + 339 * l;
        a[h] = l + 139 * l;
    }
}
