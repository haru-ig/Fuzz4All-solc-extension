pragma solidity ^0.8.0;
contract MixedContactsExample99 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 f;
    uint56 x;
    function doSomething() public {
        a = a << 5;
        b = b >> b;
        c = c / b;
        c = c * c + c * e;
        d = c * c;
        e = 2e5;
        f = e << -e;
    }
}
