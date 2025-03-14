pragma solidity ^0.8.0;
contract A {
    uint public f1;
    uint public f2;
    uint public f3;
    uint f4;
    uint public f5;
    uint public f6;
    struct A {
        uint f7;
        uint f8;
    }
    function f() private {
        f1 = 3 * 2;
        f2 = f1 + 2;
        f3 = 5 - 4;
    }
}
