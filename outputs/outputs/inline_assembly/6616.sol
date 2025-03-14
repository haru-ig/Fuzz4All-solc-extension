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
