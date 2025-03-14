pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23 {
    uint8[3] a;
    constructor () public {
        uint h = a[1];
        a[h] = 2;
    }
}
