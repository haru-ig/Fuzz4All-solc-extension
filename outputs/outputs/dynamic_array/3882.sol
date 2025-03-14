pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    function f1 (uint[][][2] memory arrayA) public{
        arrayA[0] = arrayA[1];
        b1 = arrayA;
        uint[][][2] memory arrayB = arrayA;
        arrayA[0][1][1] = 6;
        arrayA[0][0][1] = 9;
        arrayA[0][0][1] = 4;
        arrayA[0][1][0] = 7;
        arrayA[1][1][1] = 2;
        arrayA[1][1][1] = 6;
        arrayA[1][0][0] = 8;
        arrayA[1][0][0] = 9;
        arrayA[1][0][0] = 2;
        arrayA[1][0][0] = 3;
        arrayA[1][0][0] = 7;
        arrayA[1][0][0] = 5;
        arrayA[1][0][0] = 8;
        arrayA[1][1][1] = 7;
        arrayA[1][0][0] = 2;
        arrayA[1][1][1] = 7;
        arrayA[1][0][0] = 1;
        arrayB = arrayA;
        uint[][][2] memory arrayC;
        uint[][][2] memory arrayD = arrayC;
        arrayA[0][0][0] = 3;
        arrayA[0][0][0] = 1;
        arrayA[0][0][0] = 3;
        uint[][][2] memory arrayE[2];
        arrayE[0] = arrayD;
        arrayE[1] = arrayD;
        arrayE[1] = arrayD;
        arrayE[1] = array
