pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1 = arrayA;
        u64[] memory a;
        a = new u64[](1);
        a[0]=13;
        a[0]=6;
        a[0]=5;
        a = a[0];
        arrayA = new uint[][][2](1, 2);
        arrayA[0] = new uint[](1, 1);
        arrayA[0][0] = a;
        arrayA[1] = new uint[](1, 1);
        arrayA[1][0] = a;
        arrayB = arrayA;
        a[0]=7;
        arrayA = arrayA[0];
        arrayA[0][0][0]=1;
        arrayA[0][0][1]=1;
        arrayA[0][1][0]=1;
        arrayA[1][0][1]=1;
        arrayA[1][1][0]=1;
        arrayB = arrayA;
    }
}
