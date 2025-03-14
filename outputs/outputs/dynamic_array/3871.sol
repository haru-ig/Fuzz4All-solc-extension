pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1[0][0].push(0);
        b1[0][0].push(0);
        b1[0][1].push(0);
        b1[0][1].push(0);
        arrayA[0][0].push(1);
        arrayA[0][0].push(2);
        arrayA[0][1].push(3);
        arrayA[0][1].push(4);
    }
}
