pragma solidity ^0.8.0;
contract SM {
    address[] mem = new address[](1);
    constructor () {
        mem[0] = 0x12345678901234567890123456789012345678901234567890123456789012;
    }
}
contract SAA {
    address[] mem = new address[](2);
    constructor () {
        mem[0] = 0x12345678901234567890123456789012345678901234567890123456789012;
        mem[1] = 0xabcde;
    }
}
