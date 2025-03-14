pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations20_2 {
    mapping (uint => uint) b;
    constructor () public {
        uint l;
        (b[l++] = 192);
        b[l++] = 160;
    }
    function fct(mapping (uint => uint) memory h) public {
        (b[h[l++]] = h[l++]);
        (b[h[l++]] = h[l++]);
    }
}
