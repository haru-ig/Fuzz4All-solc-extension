pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample73 {
    uint256 a;
    uint256 b;
    uint256 h;
    uint256 c;
    constructor() public {
        a = 0;
        b = ~a;
        c = c + a;
        h ^= a;
    }
    function doSomething() public {
        b = ~a;
        a = a + 1;
    }
}
