pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations21_1 {
    uint[5] a;
    uint x;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        x = 42;
        h = (l + 2) * (x + 4);
        a[h] = l + 4 * l;
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint x;
        uint h;
        l = 56462234;
        l++;
        x = 42;
        h = (l + 2) * (x + 4);
        a[h] = l + 4 * l;
    }
}
