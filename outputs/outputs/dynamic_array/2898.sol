pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations30_2 {
    bytes[1][6][7] a;
    constructor () public {
        bytes32 h;
        bytes32 l;
        h = 996785;
        l = 10;
        a[h][l][4] = 5;
        a[l][h][5] = 5;
    }
    function fct(bytes[1][6][7] memory h) public {
        bytes32 l;
        bytes32 h;
        h = 996785;
        l = 10;
        a[h][l][4] = 5;
        a[l][h][5] = 5;
    }
}
