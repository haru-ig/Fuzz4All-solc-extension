pragma solidity ^0.8.0;
contract Foo {
    function myContract() public {
    uint64 a;
    uint64 b;
    a = 2;
    b = 257*128/2;
    uint64 newA= MyMath.sub(a, b);
    }
    function myContract2() public {
    uint64 a;
    uint64 b;
    a = 257*128/2;
    b = 11;
    uint64 newA= MyMath.mul(a, b);
    a = 257*128/2;
    b = 257*128/2;
    newA = MyMath.mul(a, b);
    }
}
