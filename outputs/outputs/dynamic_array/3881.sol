pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1 = arrayA;
        uint[][][2] memory arrayB = arrayA;
        arrayA[0][0][0] = 13;
        arrayA[0][0][1] = 8;
        arrayB = arrayA;
        arrayA[0][0][1] = 7;
        arrayA[0][1][1] = 6;
        arrayA[0][1][1] = 5;
        arrayA[1][1][0] = 4;
        arrayA[1][0][0] = 3;
        arrayA[1][0][0] = 2;
        arrayB[1][0][0] = 1;
        arrayA = arrayB;
        arrayA[0][0][1] = 4;
        arrayA[1][1][0] = 5;
    }
}
