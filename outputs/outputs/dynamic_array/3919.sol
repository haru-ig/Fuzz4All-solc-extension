pragma solidity ^0.8.0;
contract C {
    uint[][][] b1;
    constructor (uint[][][] memory arrayA) public {
        uint[][][] memory arrayB = arrayA;
        arrayA[0].push([234, 235, 236]);
        arrayB = arrayA;
        arrayB = arrayA;
        b1 = arrayA;
    }
}
