pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations31 {
    uint256[2] a;
    constructor () public {
        uint256[2] memory array = a;
        uint256  size   = array.length;
        uint256[2] memory initial;
        initial = array;
    }
}
