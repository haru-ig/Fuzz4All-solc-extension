pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations22v3 {
    uint a;
    constructor () public {
        uint[1] memory h = [a];
        a = a + 32;
        a = a;
    }
}
