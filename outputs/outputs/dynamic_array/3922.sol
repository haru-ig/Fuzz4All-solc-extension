pragma solidity ^0.8.0;
contract C {
    uint[13] public b1;
    constructor (uint[13] memory arrayA) public {
        uint[13] memory arrayB = arrayA;
        arrayA[1] = 13;
        arrayB = arrayA;
        arrayB = arrayA;
        b1 = arrayA;
    }
}
