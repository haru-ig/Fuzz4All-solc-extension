pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations22v1 {
    uint a;
    constructor () public {
        uint l = a;
        uint h = l;
        a = l - 42;
        a = h;
    }
}
