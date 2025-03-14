pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24 {
    uint[3, 5] c;
    constructor () public {
        c = [ 1, 0, 7 ];
        uint[3] storageA = a;
        c[0] = storageA[2];
    }
