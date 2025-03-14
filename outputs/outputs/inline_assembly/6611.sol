pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample86_New {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 ex;
    constructor() public {
        a *= a;
        b *= d / e;
        b *= c;
        a *= ex;
        c *= ex;
        b = b -  0x13;
        a = a % 1 + 0x1a;
    }
    function doSomething() public {
        a *= a;
        b *= d / e;
        b *= c;
        a *= ex;
        c *= ex;
        b = b -  0x13;
        a = a + a % 2 + 1;
    }
    function doSomething2() public {
        a *= a;
        b *= d / e;
        b *= c;
        a *= ex;
        c *= ex;
        b = b + b;
    }
}
