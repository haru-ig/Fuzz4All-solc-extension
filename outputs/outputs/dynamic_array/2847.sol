pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23 {
    uint public i;
    constructor () public {
        i;
    }
    function fct (uint[] memory m, uint j) public {
        if(j == 2)
            i += 5;
        else if (j > 3)
            i += 2;
        else
            i -= 1;
    }
}
