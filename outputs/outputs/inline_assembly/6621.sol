pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library MathLib {
    function max(uint x, uint y) internal pure returns (uint) {
        return x > y? x : y;
    }
}
contract MixedContactsExample95_New {
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
        b -= MathLib.max(0x13 * 42, (0x1a - 0x47) % MathLib.max(0x1a - 0x47, 0x40 - 0x1a));
        a %= 1 + 0x1a;
    }
    function doSomething() public {
        b *= c % 12;
        b *= c + 0x40;
        a *= ex;
        c *= ex;
        d *= c;
        e *= ex;
        b -= MathLib.max(0x13 * 42, (0x1a - 0x47) % MathLib.max(0x1a - 0x47, 0x40 - 0x1a));
        a %= 1 + 0x1a;
    }
}
