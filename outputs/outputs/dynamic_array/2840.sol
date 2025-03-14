pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations17 {
    uint public i;
    function fct (uint[3] memory x) public {
        if(i >= x[0] && i <= x[1] && i >= 2)
            i = 25;
    }
}
