pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample85 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 ex;
    address addA;
    uint256 constant constant_c = 2/3;
    uint256 constant addA_c = 2/3;
    constructor(address addA_) public {
        b *= addA_c + 0x40;
        a *= ex;
        c *= ex;
        d *= a;
        e *= ex;
        b -= 0x13;
        a %= 1 + 0x1a;
        addA = addA_;
    }
    function doSomething() public {
        b *= addA_c + 0x40;
        a *= ex;
        c *= ex;
        d *= a;
        e *= ex;
        b -= 0x13;
        a %= 1 + 0x1a;
        addA = addA_;
    }
    receive() external payable {
    }
}
contract MixedContactsExample85_Optimized {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 ex;
    address addA;
    uint256 constant constant_c = 2/3;
    uint256 constant addA_c = 2/3;
    constructor(address addA_) public {
        b *= addA_c + 0x40;
        a *= ex;
        c *= ex;
        d *= a;
        e *= ex;
        b -= 0x13;
        a %= 1 + 0x1a;
        addA = addA_;
    }
    receive() external {
    }
    function doSomething() public {
        b *= addA_c
