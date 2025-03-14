pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint x) public {
        b1 = [x];
        uint[][][2] memory arrayB = [x];
        array1[0][0][0] = 13;
        array1[0][0][1] = 8;
        arrayB = array1;
        array1[0][0][1] = 7;
        array1[0][1][1] = 6;
        array1[0][1][1] = 5;
        array1[1][1][0] = 4;
        array1[1][0][0] = 3;
        array1[1][0][0] = 2;
        arrayB[1][0][0] = 1;
        array1 = arrayB;
        array1[0][0][1] = 4;
        array1[1][1][0] = 5;
    }
}
