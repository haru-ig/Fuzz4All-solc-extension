pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    uint[][][2] memory arrayA;
    constructor (uint[][][2] memory arrayA) public {
        uint[][][2] memory arrayA2 = memory[10][10]();
        arrayA = arrayA2;
        b1 = arrayA;
        b1[0][0].push(0);
        b1[0][0].push(0);
        b1[0][1].push(0);
        b1[0][1].push(0);
        b1 = arrayA2;
    }
}
contract D {
    uint[][][2] b1;
    uint[][] memory arrayA;
    constructor () public {
        arrayA = memory[10][10]();
        b1 = arrayA;
        b1[0][0].push(0);
        b1[0][0].push(0);
        b1[0][1].push(0);
        b1[0][1].push(0);
        b1 = arrayA;
    }
}
