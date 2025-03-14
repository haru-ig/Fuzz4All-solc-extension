pragma solidity ^0.8.0;
contract C {
    using BytesLib for bytes;
    uint[][][2] b2;
    constructor (uint[][][2] memory arrayA) public {
        uint[][][2] memory arrayB = arrayA;
        arrayA[0][0][0] = 13;
        arrayA[0][0][1] = 8;
        arrayB = arrayA;
        arrayA[0][0][1] = 7;
        b2 = arrayA;
        b2 = arrayA;
        arrayA[0][0][1] = 6;
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
