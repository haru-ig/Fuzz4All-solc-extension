pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        uint[][][2] memory arrayB = arrayA;
        arrayA[0][0][0] = 13;
        arrayB = arrayA;
        arrayB = arrayA;
        b1 = arrayA;
    }
}
