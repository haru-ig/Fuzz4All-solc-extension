pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample71Address {
    address a;
    address b;
    address c;
    constructor(address d1, address d2, address d3) public {
        a = d1;
        b = d1;
        c = d1;
        c = d1;
        b = d1;
        a = d1;
        b = d1;
        a = d1;
        a = d1;
        address x = address(0);
        a = d1;
        b = d1;
        x = address(0);
    }
    function doSomething() public {
        address x = address(0);
        a = 0;
        b = a;
        c = 0;
    }
}
