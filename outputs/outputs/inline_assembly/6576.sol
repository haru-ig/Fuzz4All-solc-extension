pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract FancyContactsExample80 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() {
        setA(0);
        setB(~a);
        setB(b + 10);
        setB(b * 2);
        setC(c + a);
        setD(d + b);
        setE(e + c);
    }
    function setA(uint256 input) public {
        a = input;
    }
    function setB(uint256 input) public {
        b = ~a;
        b = b + 10;
        b = b * 2;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething() public {
        setA(a + 1);
        setB(~a);
        setB(b + 10);
        setB(b * 2);
        setC(c + a);
        setD(d + b);
        setE(e + c);
    }
}
