pragma solidity ^0.8.0;
uint32 constant initIB = 9;
contract Q {
    mapping(uint32 => uint32) A;
    constructor() public {
        A[initIB];
    }

    function F() public {
        A[initIB] = A[initIB] + initIB*10;
        A[initIB] = A[initIB] + 2*initIB;
        A[initIB];
        A[initIB];
    }
}
