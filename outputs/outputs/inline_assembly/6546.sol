pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample74 {
    uint256 a;
    uint256 b;
    uint256 h;
    uint256 c;
    constructor() public {
        a = 0;
        uint256 tmp = ~a;
        b = ~a;
        h ^= a;
        a = a + 1;
        a = a + tmp;
        uint256 tmp1 = tmp + c;
        a = a + b;
        uint256 tmp2;
        tmp2;
    }
    function doSomething() public {
        a = a + ~b;
        b = a + b;
        c = tmp1 + a;
    }
}
