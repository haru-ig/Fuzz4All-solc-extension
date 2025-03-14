pragma solidity ^0.8.0;
interface MixedContactsExample506Interface {
    function someOperation() external returns (uint64);
}
contract MixedContactsExample506 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SoMEvent(uint value, uint64 count);
    function doSomething() public returns (uint64) {
        a *= 8;
        b *= 68;
        y = 0;
        bool x3 = a % 3 == 0;
        c *= 948;
        d *= 87;
        if(!x3) a += b + b + b + b + b + b;
        e *= 7;
        b *= 49;
    }
}
