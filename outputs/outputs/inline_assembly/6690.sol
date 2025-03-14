pragma solidity ^0.8.0;
contract MixedContactsExample600 {
    uint56 x, a, b;
    uint56 y;
    uint56 c, d;
    uint56 e;
    event SomeEvent(uint value);
    constructor() {
        x = 378;
        a = x * 3;
        b = x;
        c = a * a + 4;
        d = a / 3 + 50;
        e = x * 22;
        callEvent();
    }
    function doSomething() public {
        x = x * 491;
        b = x / b;
        e = x + b + 45;
    }
    function callEvent() public {
        emit SomeEvent(x);
        emit SomeEvent(e);
    }
}
contract MixedContactsExample800 {
    MixedContactsExample501Interface m = MixedContactsExample501Interface(0x383926A11681A4F33920EB8C76B1A9D2525A6C26);
    function someFunc() public returns (uint56) {
        return m.someOperation();
    }
}
