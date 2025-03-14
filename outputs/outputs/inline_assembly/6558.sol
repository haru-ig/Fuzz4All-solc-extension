pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample81 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething() public {

        a = a + 1;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
}
