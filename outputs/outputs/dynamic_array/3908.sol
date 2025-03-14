pragma solidity ^0.8.0;
contract C {
    uint[][][5] private b1;
    constructor (uint[][][5] memory arrayA) public {
    uint [[5][2]][4] memory arrayB = arrayA;
    arrayA[0][0][0] = 7;
    arrayA[0][0][1] = 2;
    arrayA[0][0][2] = 4;
    arrayA[0][0][3] = 3;
    arrayB[0][0][0] = 6;
    arrayB[0][0][1] = 5;
    arrayB[0][0][2] = 1;
    arrayB[0][0][3] = 0;
    arrayB[0][0][4] = 1;
    arrayA = arrayB;
    arrayA[0][0][1] = 4;
    arrayA[0][1][1] = 6;
    arrayA[1][1][0] = 5;
    arrayA[1][0][0] = 7;
    arrayA[1][0][0] = 5;
    arrayB[1][1][0] = 3;
    arrayB[1][0][0] = 2;
    arrayB[1][0][0] = 5;
    arrayB[1][0][0] = 7;
    arrayB[1][0][0] = 6;
    arrayB[1][0][0] = 4;
    arrayA = arrayB;
    arrayA[1][1][0] = 2;
    arrayA[0][1][1] = 7;
    arrayA[0][0][1] = 5;
    arrayA[1][
