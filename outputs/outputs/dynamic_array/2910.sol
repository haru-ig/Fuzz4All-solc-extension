pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations22a {
    uint[5] a;
    constructor () public {
        uint l = a.length;
        uint h = a[l];
        a[h] = l + 1;
    }
}
