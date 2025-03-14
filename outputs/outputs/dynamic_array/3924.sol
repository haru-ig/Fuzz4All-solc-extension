pragma solidity ^0.8.0;
contract C {
    uint[13] b;
    constructor () public {
        uint[13] memory arrayB = new uint[13]{ gas: 1000000 };
        arrayB[1] = 13;
        b = arrayB;
        b = arrayB;
    }
}
