pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample74 {
    bytes32 x;
    constructor() public {
        x = bytes32(a + 1);
    }
    function doSomething() public {
        x = x + a + 1;
    }
}
