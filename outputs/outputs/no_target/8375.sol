pragma solidity ^0.8.0;
contract Safe2 {
    bytes16 a;
    bytes16 b;
    bytes16 c;
    bytes16 d;
    address e;
    string f;
    bytes1 abcd;
    constructor() public {
        a = 'f';
        b = 'g';
        c = bytes1(0x01);
        d = -1;
        e = address(0x01);
        f = 'hello';
        abcd = 'abcdef';
    }
    function g() public {
        e = address(0x123);
    }
}
