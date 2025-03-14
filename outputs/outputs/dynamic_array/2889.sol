pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations21 {
    uint[5] a;
    uint[5] b;
    constructor () public {
        uint l;
        uint h;
        l = 56462234 * 28;
        h = (l + 66635135) * 66669;
        b = l - h;
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234 * 47298;
        h = (l + 66635135) * 66669;
        b = l - h;
    }
}
