pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample85_New {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 ex;

    constructor() public {
        a %= 1 + 0x1a;
        a = a / 1 + 0x1a;

        a += a + a + a + a + a + a + a + a + a + a + a + a + a;
        a = a * a + a;
        a = a + a + a + a + a + a + a + a;
        a %= 1 + 0x1a;
        a = a + a + a + a + a + a + a + a + 1;
        a %= 1 + 0x1a;
        c %= 0xAB;
        c = c * c + c;
        b = a + 0x1a;
        b = a * b;
        b -= c + 1;
        b * 0x30 * 2;
        b **= b % 0x3F;
        b += b + b + b;
        b %= 0xBF;
        d = 0x1 * 0x2 * a * a * a + 0x0B10000 + 0x89E3F64813474400 + 0x28801 + 1;
        e = 0x5A827C8018B75800 + 1;
        a = a * 0x10 + 1;
        a = 1 * a + 11;
        c = c + 1;
        c **= 1;

        d = d * d + 0x2E * d + 0x559B7CA
