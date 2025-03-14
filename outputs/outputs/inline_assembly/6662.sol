pragma solidity ^0.8.0;
contract MixedContactsExample101 {
    uint x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    uint56 x9;
    uint56 x10;
    bool x6;
    bool x7;
    bool x8;
    uint16 x11;
    function doSomething() public returns (uint64) {
        x = x * 8;
        x9 = x * 5;
        x10 = x * 5;
        a = a * 8;
        b = b * 68;
        x6 = x > 42;
        x7 = x > 42;
        x8 = x == 5;
        x11 = x + 3;
        c = c * 948;
        d = d * 87;
        if(!x6) {
            x9 = 677;
            y = e;
        }
        e = e * 7;
        x10 = x10 * 7;
        a = a + c + b ;
    }
}
