pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    constructor() public {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
    }
    function doSomething() public {
        b = ~0;
        a = a + 1;
    }
}
