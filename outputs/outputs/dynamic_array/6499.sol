pragma solidity ^0.8.0;
contract SM {
    uint s = 123;
    uint[] mem = new uint[2];
    uint[10][] memArr = new uint[10][](2);
    uint[5][5][] memArr2 = new uint[5][5][](1);
    constructor () {
        mem[0] = 123;
        mem[1] = 456;
        mem[0] = 999;
        mem[1] = 0;
        memArr[0].push(123);
        memArr[1].push(456);
        memArr[0][0] = 999;
        memArr[1][0] = 0;
        memArr2[0].push(123);
        memArr2[0][0] = 0;
        memArr2[0].push(456);
        memArr2[0][0] = 123;
        memArr2[0][0] = 0;
        memArr2[0].push(123);
        memArr2[0][0] = 123;
        memArr2[0][0] = 0;
        memArr2[0][0] = 123;
    }
}
