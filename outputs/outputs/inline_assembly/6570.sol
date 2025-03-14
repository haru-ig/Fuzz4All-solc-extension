pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample81 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 r;
    uint256 s;
    uint256 x = 314;
    uint256 y;
    constructor() {
        b = ~a;
        b = b + 10;
        b = b * 2;
        c = x * 18;
        x = 5 * x + r;
        x = x - r * 2;
        s = s * 12;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething() public {
        a = a + 1;
        b = ~a;
        b = b + 10;
        b = b * 2;
        c = x * 18;
        x = 5 * x + r;
        x = x - r * 2;
        s = s * 12;
        c = c + a;
        d = d + b;
        e = e + c;
    }
}
