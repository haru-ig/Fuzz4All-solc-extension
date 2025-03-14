pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1[0][1] = [9, 10];
        uint n = b1.length;
        for (uint j = 0; j < 10; j++) {
            n = n + 1;
        }
        delete b1[0][1];
    }
}
