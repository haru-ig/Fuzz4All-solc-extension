pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample85_New {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint256 public ex;
    function doSomething() public {
        a *= a;
        b *= d / e;
        b *= c;
        a *= ex;
        c *= ex;
        b = b -  0x13;
        a = a % 2 + 0x2a;
    }
}
