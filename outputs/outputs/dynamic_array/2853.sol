pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations31 {
    uint public i;
    constructor () public {
        i;
    }
    function fct (uint[] memory m, uint j, uint k) public {
        if(k == 2)
            i += 5;
        else if (k > 3)
            i += 2;
        else
            i -= 1;
    }
}
