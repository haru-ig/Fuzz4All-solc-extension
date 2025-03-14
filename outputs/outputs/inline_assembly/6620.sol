pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample95_Better {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 ex;
    constructor(uint56 _a, uint56 _b, uint56 _c,
        uint56 _d, uint56 _e, uint56 _ex) public {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
        e = _e;
        ex = _ex;
    }
    function doSomething() public {
        b *= c % 12;
        b *= c + 0x40;
        a *= ex;
        c *= ex;
        d *= c;
        e *= ex;
        b -= 0x13;
        a %= 1 + 0x1a;
    }
}
