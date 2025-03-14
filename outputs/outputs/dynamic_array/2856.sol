pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations32 {
    uint public i;
    constructor () public {
        i;
    }
    function fct (uint[] memory m, uint j, uint k) public {
        i = 3;
    }
}
