pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations19_2 {
    uint[5] a;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l - 4) * (l - 2);
        a[4] = h * (l - h);
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234;
        l++;
        h = (l - 4) * (l - 2);
        a[4] = h * (l - h);
    }
}
