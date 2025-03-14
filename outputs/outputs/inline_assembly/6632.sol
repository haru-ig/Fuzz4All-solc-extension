pragma solidity ^0.8.0;
contract MixedContactsExample96 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 ex;
    function doSomething() public {
    c *= 0x82;
    c *= 0xf3;
    a *= c;
    b *= a;
    d *= e;
    ex *= a;
    b -= 0x13;
    d = e;
    b += d;
    }
}
