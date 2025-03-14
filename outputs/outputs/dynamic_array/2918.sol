pragma solidity ^0.8.0;
event Event1(address addr1, bytes32 a1, bytes32 a2);
contract SymbolicEquality_ArrayMutations14v1 {
    uint b;
    constructor () public {
        uint l = b;
        uint h = l;
        b = l + 16 * l;
    }
}
