pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations89 {
    uint public i;
    constructor () public {
        i;
    }
    function fct (uint[] memory m) public {
        if(i >= m[0] && i <= m[1] && i >= 2 && i <= 5) {
            if(i == 2 || i == 3)
                i += 5;
            else if (i > 3)
                i += 2;
            else
                i -= 1;
        }
    }
}
