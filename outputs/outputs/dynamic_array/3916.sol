pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor () public {
        uint[][][2] memory arrayA;
        uint[][][2] memory emptyArray;
        arrayA = new uint[][][](2);
        arrayA = emptyArray;
        arrayA = arrayA;
        arrayA = arrayA;
        b1 = arrayA;
    }
}
