pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample86 {
    uint256 public b;
    uint256 a;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 ex;
    constructor() public {
        a *= 0xff;
        a *= 0xd9;
        b *= 0xd2;
        a *= 0xd0;
        c *= 0x5e;
        d *= 0x55;
        e *= 0x19;
        a *= a + 0x40;
        b *= b + c % 2222;
        b *= b + a + 0x62;
        b *= b + 0x17;
        a %= 1 + 0x1e;
        a %= 1 + a;
        b *= 0x99;
        b *= b;
        a = c + 0x40;
        a *= a % 0xf5;
        a *= b + a;
        a *= a + 0x10;
        b *= b;
    }
    function doSomething() public {
        a *= 0x11;
        a *= 0x1a;
        b *= 0x19;
        a *= 0x1c;
        c *= 0x17;
        d *= 0x17;
        e *= 0x13;
        a *= a + 0x80;
        c *= c;
        d *= d - 0x40;
        b *= b;
        e *= e;
        a *= a;
        c *= c + a + a + 0x10;
        c *= b;
        a *= 0x02;
        b *= b - b % 0x80;
        a *= a + 0x40;
        a *= c % 0x69;
        b *= b - b %
