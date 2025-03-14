pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample82b_New {
    function doSomething() public {
        assembly {
            a := a + 1
            b := b + a
            b := b + 10
            b := b times 2
            c := c + a
            d := d + b
            e := e + c
            e := e - 17
        }
    }
}
