pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample95_Old {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 ex;
    constructor() public {
        b *= c % 12;
        b *= c + 0x40;
        a *= ex;
        c *= ex;
        d *= c;
        e *= ex;
        b -= 0x13;
        a %= 1 + 0x1a;
    }
    function doSomething() public override returns (uint56) {
        b *= c % 12;
        b *= c + 0x40;
        a *= ex;
        c *= ex;
        d *= c;
        e *= ex;
        b -= 0x13;
        a %= 1 + 0x1a;
        return (c) + (ex) + (ex) % (c) + ((a) / (ex % (c + (b) + (16 - d)) + 0x3)) % (1) + ((d) + (1) + (c) % (d - (c + ex)) + (1)) % (c + 0x3) + ((b)) % (c + ex);
    }
}
