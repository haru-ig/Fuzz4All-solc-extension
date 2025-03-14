pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations32 {
    uint public i;
    constructor (uint _initValue) public {
        i = _initValue;
    }
    function fct (uint[] calldata m, uint j, uint k) public {
        if(k == 2)
            i += 5;
        else if (k > 3)
            i += 2;
        else
            i -= 1;
    }
}
