pragma solidity ^0.8.0;
contract MixedContactsExample100 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 x;
    uint56 ex;
    function doSomething() public {
        b *= 0x82;
        b *= 0x63;
        a *= ex;
        c *= ex;
        d *= c;
        e *= ex;
        b -= 0x12;
    }
    function doSomething2() public {
        emit NewContact(x);
    }
}
