pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations19 {
    uint[5] a;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        h = (l + 66635135) * 66669;
        a[4] = l - h;
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234;
        h = (l + 66635135) * 66669;
        a[4] = l - h;
    }
}
