pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_Mutatable {
    uint public x;
    uint public y;
    function xModified(uint initial) returns (uint final) {
        return x = initial + 1;
    }
    function yModified(uint initial) returns (uint final) {
        return y = initial * 2 + 500;
    }
}
