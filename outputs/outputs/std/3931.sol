pragma solidity ^0.8.0;
contract Foo {
    function myContract() public {
    uint64 a;
    uint64 b;
    a = 0x2;
    b = 0x0;
    uint64 newA = MyMath.div(a, b);
    }
    function myContract2() public {
    uint64 a;
    uint64 b;
    a = 0;
    b = 24;
    uint64 newA = MyMath.div(a, b);
    }
}
