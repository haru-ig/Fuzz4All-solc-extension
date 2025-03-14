pragma solidity ^0.8.0;
address payable owner = payable(msg.sender);
contract SymbolicEquality_ArrayMutations19 {
    uint[6] a;
    constructor () public {
        a[0] = 0;
        a[1] = 1;
        a[2] = 2;
        a[3] = 3;
        a[4] = 4;
        a[5] = 5;
        a[6] = 6;
    }
}
contract SymbolicEquality_ArrayMutations25 {
    uint[20] a;
    constructor () public {
        a[0] = 0;
        a[1] = 1;
        a[2] = 2;
        a[3] = 3;
        a[4] = 4;
    }
}
