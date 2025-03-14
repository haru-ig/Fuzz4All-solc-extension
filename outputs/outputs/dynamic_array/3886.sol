pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    address[][] contractA;
    address[][][2] b2;
    constructor (address[][][2] memory contractA, uint[][][2] memory arrayA) public {
        b1 = arrayA;
        contractA = contractA;
        b2 = arrayA;
        arrayA[0][0][0] = address(this);
        arrayA[0][0][1] = address(this);
        b2 = arrayA;
        arrayA[0][0][1] = address(this);
        arrayA[0][1][1] = address(this);
        b1 = arrayA;
        arrayA[0][0][1] = address(this);
        arrayA[0][1][1] = address(this);
    }
}
