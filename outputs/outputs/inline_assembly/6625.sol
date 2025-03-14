pragma solidity ^0.8.0;
contract MixedContactsExample96 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    function doSomething() public {
        a *= c % 7;
        a *= c + 0x3f;
        a += 0x20;
        c *= c;
        c *= b + 0x11;
        c *= c + 0x5f;
        d *= d % 8;
        d *= 0x24;
        b *= d + 0x2c;
        d *= d;
        d *= d;
        a *= 0x59;
    }
}
