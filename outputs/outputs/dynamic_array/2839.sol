pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations26_ {
    uint public i;
    function fct (uint[2] memory x) public {
        uint[2] memory mem = i < x[0] && x[1] > x[0] && i == 25 && x[1] >= x[0];
        x[0] += x[0];
        x[0] += 19;
        x[1] += 17;
        if(i > mem[1] && i < 12) i = 23;
    }
}
