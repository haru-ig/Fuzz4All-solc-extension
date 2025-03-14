pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    uint[][][2] arrayB;
    uint[2][] arrayC;
    constructor (uint[][][2] memory arrayA) public {
        b1[0][0] = [2, 3, 4];
        b1[0][1] = [6, 7, 8];
        arrayB = [arrayA[0], arrayA[1]];
        arrayC = [arrayA[0], arrayB[1]];
    }
}
