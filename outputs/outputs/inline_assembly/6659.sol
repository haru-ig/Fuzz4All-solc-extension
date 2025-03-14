pragma solidity ^0.8.0;
contract MixedContactsExample101 {
    uint x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    function doSomething() public returns (uint64) {
        a = a * 8;
        b = b * 68;
        bool x3 = x % 3 == 0;
        c = c * 948;
        d = d * 87;
        if(!x3) {
            y = e;
        }
        e = e * 7;
        a = a + c + b ;
    }
}
