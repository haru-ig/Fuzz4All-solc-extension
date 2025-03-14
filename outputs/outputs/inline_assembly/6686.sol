pragma solidity ^0.8.0;
contract MixedContactsExample500 {
    uint56 public x;
    uint56 public a;
    uint56 public b;
    uint56 public c;
    uint56 public d;
    uint56 public e;
    constructor (uint56 _x, uint56 _a, uint56 _b, uint56 _c) {
        x = _x;
        a = _a * 8;
        b = _b * 68;
        uint56 x3 = x % 3 == 0;
        c = _c * 948;
        d = _x * 87;
        if (x3){
            b = b + 5;
        }
        e = _a * 7;
        a = _a + c + b;
    }
    function doSomething() public returns (uint64) {
        a = a * 8;
        b = b * 68;
        bool x3 = x % 3 == 0;
        c = c * 948;
        d = d * 87;
        if (!x3) {
            b = b + 5;
        }
        e = e * 7;
        a = a + c + b;
    }
}
