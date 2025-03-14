pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations22v2 {
    uint a;
    constructor () public {
        uint[] memory l = new uint[](1);
        uint[] memory h = new uint[](1);
        h[0] = l[0];
        a = l[0] + 32;
        a = h[0];
    }
}
