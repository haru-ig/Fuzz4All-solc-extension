pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1[0][0] = [2, 3, 4];
        b1[0][1] = [6, 7, 8];
        b1 = arrayA;
    }
}
