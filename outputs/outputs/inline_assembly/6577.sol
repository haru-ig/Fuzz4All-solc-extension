pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() {
        a = ~a + 1;
        a++;
        b = b + c + d;
        b += 2;
        c = c + b + a;
        b *= 2;
        e = 2 + b;
    }
    function doSomething() public {
        a = a + 1;
        a++;
        b = b + c + d;
        b += 2;
        c = c + b + a;
        b *= 2;
        e = 2 + b;
    }
}
