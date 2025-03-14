pragma solidity ^0.8.0;
contract C {
    uint[2] memory b1;
    uint[][2] memory b2;
    uint[2] internal b3;
    constructor (uint[2] memory value) public {
        b1[0] = 1;
        b1[1] = 2;
        b2[0].push(0);
        b2[0].push(0);
        b3 = value;
        b2 = b1;
    }
}
