pragma solidity ^0.8.0;
contract C {
    uint[][][3] b1;
    constructor (uint[][][3] memory arrayA) public {
        uint[][][3] memory arrayB = arrayA;
        arrayA[0][0][0] = 13;
        arrayA[0][0][1] = 8;
        arrayA[0][0][2] = 4;
        arrayA[0][1][0] = 3;
        arrayA[0][1][1] = 2;
        arrayA[0][1][2] = 1;
        arrayA[0][2][1] = 8;
        arrayA[0][2][1] = 7;
        arrayB[0][0][2] = 4;
        arrayB[0][0][2] = 3;
        arrayB[0][0][2] = 2;
        arrayB[0][0][2] = 1;
        arrayA = arrayB;
        arrayA[0][0][1] = 4;
        arrayA[1][1][0] = 5;
    }
}
