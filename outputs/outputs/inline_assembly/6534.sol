pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample73 {
    address payable foo;
    address payable bar;
    event FooEvent(uint a, uint b);
    constructor(address payable d1, address payable d2, uint d3) public {
        int a1 = 0;
        int b2 = 0;
        address payable c1 = address(0x1);
        address payable c2 = address(0x1);
        address payable c3 = address(0x1);
        if (a1 > 0) {
            int d2 = 0;
            int d3 = 0;
            d2 = 1;
            d3 = a1 + b2 - c2;
        }
        else {
            a1 = d1;
            b2 = d2;
        }
        a1 = c1; b2 = c2; a1 = d1; b2 = d2; a1 = d1; b2 = d2;
        a1 = 0;
        b2 = 0; a1 = d1; b2 = d2; a1 = d1; b2 = d2; a1 = d1; b2 = d2;
        bar = d1; c1 = foo; c2 = foo; c3 = bar;
        emit FooEvent(a1,b2);
        c1 = c1; a1 = c1;
    }
    function doSomething() public {
        foo = address(0x1);
        foo = address(0x1);
        foo = address(0x1);
        foo = address(0x1);
        foo = address(0x1);
        foo = address(0x1);
        foo = address(0x1);
        address payable d1 = foo;
        address payable d2 = foo;
        uint d3 = d1 + d1 + d1 + d2 + d1 + d1 + c2 + d3 + d3 + a2;
    }
}
