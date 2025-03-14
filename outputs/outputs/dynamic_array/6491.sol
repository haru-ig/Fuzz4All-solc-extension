pragma solidity ^0.8.0;
contract SM {
    uint s = 123;
    uint[] mem = new uint[](1);
    constructor () {
        mem[0] = 123;
    }
}
contract SAA {
    uint s = 123;
    uint[] mem = new uint[](2);
    constructor () {
        mem[0] = 123;
        mem[1] = 456;
    }
}
