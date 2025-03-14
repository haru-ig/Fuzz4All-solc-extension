pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1 = arrayA;
        uint[][][2] memory arrayB1 = arrayA;
        b1[0][0][1] = 7;
        b1[1][0][0] = 2;
        b1 = b1;
        b1[0][0][1] = 10;
        uint[][][2] memory arrayB2 = 0.0;
    }
}
