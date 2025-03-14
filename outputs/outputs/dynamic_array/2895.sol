pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations21_2 {
    uint[5] a;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l + 2) * (l + 4);
        a[h] = l + 4 * l;
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l + 2) * (l + 4);
        a[h] = l + 4 * l;
    }
}
