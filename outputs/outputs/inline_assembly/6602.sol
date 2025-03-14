pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample86_New {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint256 constant f = 0x241;
    function doSomething() public {
        if (a > b) {
            a = a + f;
        }

        if (a >= b || a <= b * 2) {
            a = a - a / b;
        }

        e -= a;
        b = a;
        a =  a / f;
        b = 0 + b;
    }
}
