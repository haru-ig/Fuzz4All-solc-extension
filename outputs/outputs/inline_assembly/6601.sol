pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample65_Old {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint256 public ex;
    function doSomething() public {
        a *= a;
        b *= d / e;
        a *= a - b - 0x5a;
        a *= a;
        a += 0x2a;
        a -= a;
    }
}
