pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23 {
    uint public i;
    uint[] public j;
    constructor () public {
        i;
        j;
    }
    function fct (int64[] memory m) public {
        if(i >= m[0] && i <= m[1] && i >= 2 && i <= 5) {
            if(i == 2 || i == 3 || i == 4)
                i += 4;
            else
                i -= 1;
        }
    }
}
