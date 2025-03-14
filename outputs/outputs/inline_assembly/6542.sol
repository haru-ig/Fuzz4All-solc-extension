pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample73 {
    uint a;
    uint b;
    uint c;
    constructor(uint d1, uint d2) public {
        a = d1;
        b = d2;
        c = 0;
    }
    function doSomething() public {
        b = c;
    }
}
