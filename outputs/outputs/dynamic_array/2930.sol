pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23 {
    uint[][3] a;
    constructor () public {
        a[0] = [0,1,2];
        a[1] = [4,5,6];
        a[2] = [7,8,9];
        a[1][0] = 1;
    }
}
